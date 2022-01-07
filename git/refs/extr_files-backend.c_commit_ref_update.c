
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_lock {char* ref_name; int old_oid; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int base; } ;


 int REF_ISSYMREF ;
 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 int clear_loose_ref_cache (struct files_ref_store*) ;
 scalar_t__ commit_ref (struct ref_lock*) ;
 int error (char*,int ) ;
 int files_assert_main_repository (struct files_ref_store*,char*) ;
 scalar_t__ files_log_ref_write (struct files_ref_store*,char*,int *,struct object_id const*,char const*,int ,struct strbuf*) ;
 int free (char*) ;
 char* refs_resolve_ref_unsafe (int *,char*,int ,int *,int*) ;
 int strbuf_addf (struct strbuf*,char*,char*,...) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int unlock_ref (struct ref_lock*) ;

__attribute__((used)) static int commit_ref_update(struct files_ref_store *refs,
        struct ref_lock *lock,
        const struct object_id *oid, const char *logmsg,
        struct strbuf *err)
{
 files_assert_main_repository(refs, "commit_ref_update");

 clear_loose_ref_cache(refs);
 if (files_log_ref_write(refs, lock->ref_name,
    &lock->old_oid, oid,
    logmsg, 0, err)) {
  char *old_msg = strbuf_detach(err, ((void*)0));
  strbuf_addf(err, "cannot update the ref '%s': %s",
       lock->ref_name, old_msg);
  free(old_msg);
  unlock_ref(lock);
  return -1;
 }

 if (strcmp(lock->ref_name, "HEAD") != 0) {
  int head_flag;
  const char *head_ref;

  head_ref = refs_resolve_ref_unsafe(&refs->base, "HEAD",
         RESOLVE_REF_READING,
         ((void*)0), &head_flag);
  if (head_ref && (head_flag & REF_ISSYMREF) &&
      !strcmp(head_ref, lock->ref_name)) {
   struct strbuf log_err = STRBUF_INIT;
   if (files_log_ref_write(refs, "HEAD",
      &lock->old_oid, oid,
      logmsg, 0, &log_err)) {
    error("%s", log_err.buf);
    strbuf_release(&log_err);
   }
  }
 }

 if (commit_ref(lock)) {
  strbuf_addf(err, "couldn't set '%s'", lock->ref_name);
  unlock_ref(lock);
  return -1;
 }

 unlock_ref(lock);
 return 0;
}
