
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct ref_lock {int lk; int ref_name; struct object_id const old_oid; } ;
struct files_ref_store {int base; int * packed_ref_store; } ;


 int EISDIR ;
 int ENOTDIR ;
 unsigned int REF_DELETING ;
 int RESOLVE_REF_ALLOW_BAD_NAME ;
 int RESOLVE_REF_NO_RECURSE ;
 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 int assert (struct strbuf*) ;
 int create_reflock ;
 int errno ;
 int files_assert_main_repository (struct files_ref_store*,char*) ;
 int files_ref_path (struct files_ref_store*,struct strbuf*,char const*) ;
 scalar_t__ is_null_oid (struct object_id const*) ;
 scalar_t__ raceproof_create_file (int ,int ,int *) ;
 int refs_resolve_ref_unsafe (int *,char const*,int,struct object_id const*,int*) ;
 scalar_t__ refs_verify_refname_available (int *,char const*,struct string_list const*,struct string_list const*,struct strbuf*) ;
 scalar_t__ remove_empty_directories (struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;
 int strerror (int) ;
 int unable_to_lock_message (int ,int,struct strbuf*) ;
 int unlock_ref (struct ref_lock*) ;
 scalar_t__ verify_lock (int *,struct ref_lock*,struct object_id const*,int,struct strbuf*) ;
 struct ref_lock* xcalloc (int,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct ref_lock *lock_ref_oid_basic(struct files_ref_store *refs,
        const char *refname,
        const struct object_id *old_oid,
        const struct string_list *extras,
        const struct string_list *skip,
        unsigned int flags, int *type,
        struct strbuf *err)
{
 struct strbuf ref_file = STRBUF_INIT;
 struct ref_lock *lock;
 int last_errno = 0;
 int mustexist = (old_oid && !is_null_oid(old_oid));
 int resolve_flags = RESOLVE_REF_NO_RECURSE;
 int resolved;

 files_assert_main_repository(refs, "lock_ref_oid_basic");
 assert(err);

 lock = xcalloc(1, sizeof(struct ref_lock));

 if (mustexist)
  resolve_flags |= RESOLVE_REF_READING;
 if (flags & REF_DELETING)
  resolve_flags |= RESOLVE_REF_ALLOW_BAD_NAME;

 files_ref_path(refs, &ref_file, refname);
 resolved = !!refs_resolve_ref_unsafe(&refs->base,
          refname, resolve_flags,
          &lock->old_oid, type);
 if (!resolved && errno == EISDIR) {






  if (remove_empty_directories(&ref_file)) {
   last_errno = errno;
   if (!refs_verify_refname_available(
         &refs->base,
         refname, extras, skip, err))
    strbuf_addf(err, "there are still refs under '%s'",
         refname);
   goto error_return;
  }
  resolved = !!refs_resolve_ref_unsafe(&refs->base,
           refname, resolve_flags,
           &lock->old_oid, type);
 }
 if (!resolved) {
  last_errno = errno;
  if (last_errno != ENOTDIR ||
      !refs_verify_refname_available(&refs->base, refname,
         extras, skip, err))
   strbuf_addf(err, "unable to resolve reference '%s': %s",
        refname, strerror(last_errno));

  goto error_return;
 }







 if (is_null_oid(&lock->old_oid) &&
     refs_verify_refname_available(refs->packed_ref_store, refname,
       extras, skip, err)) {
  last_errno = ENOTDIR;
  goto error_return;
 }

 lock->ref_name = xstrdup(refname);

 if (raceproof_create_file(ref_file.buf, create_reflock, &lock->lk)) {
  last_errno = errno;
  unable_to_lock_message(ref_file.buf, errno, err);
  goto error_return;
 }

 if (verify_lock(&refs->base, lock, old_oid, mustexist, err)) {
  last_errno = errno;
  goto error_return;
 }
 goto out;

 error_return:
 unlock_ref(lock);
 lock = ((void*)0);

 out:
 strbuf_release(&ref_file);
 errno = last_errno;
 return lock;
}
