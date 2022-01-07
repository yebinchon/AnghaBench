
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {char const* buf; } ;
struct ref_lock {int old_oid; int lk; int ref_name; } ;
struct files_ref_store {int * packed_ref_store; int base; } ;


 scalar_t__ EINVAL ;
 scalar_t__ EISDIR ;
 scalar_t__ ENOENT ;
 int LOCK_NO_DEREF ;
 unsigned int REF_ISBROKEN ;
 int REMOVE_DIR_EMPTY_ONLY ;



 struct strbuf STRBUF_INIT ;
 int TRANSACTION_GENERIC_ERROR ;
 int TRANSACTION_NAME_CONFLICT ;
 int assert (struct strbuf*) ;
 scalar_t__ errno ;
 int files_assert_main_repository (struct files_ref_store*,char*) ;
 scalar_t__ files_read_raw_ref (int *,char const*,int *,struct strbuf*,unsigned int*) ;
 int files_ref_path (struct files_ref_store*,struct strbuf*,char const*) ;
 int get_files_ref_lock_timeout_ms () ;
 scalar_t__ hold_lock_file_for_update_timeout (int *,char const*,int ,int ) ;
 scalar_t__ refs_verify_refname_available (int *,char const*,struct string_list const*,struct string_list const*,struct strbuf*) ;
 scalar_t__ remove_dir_recursively (struct strbuf*,int ) ;
 int safe_create_leading_directories (char const*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 char const* strerror (scalar_t__) ;
 int unable_to_lock_message (char const*,scalar_t__,struct strbuf*) ;
 int unlock_ref (struct ref_lock*) ;
 struct ref_lock* xcalloc (int,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int lock_raw_ref(struct files_ref_store *refs,
   const char *refname, int mustexist,
   const struct string_list *extras,
   const struct string_list *skip,
   struct ref_lock **lock_p,
   struct strbuf *referent,
   unsigned int *type,
   struct strbuf *err)
{
 struct ref_lock *lock;
 struct strbuf ref_file = STRBUF_INIT;
 int attempts_remaining = 3;
 int ret = TRANSACTION_GENERIC_ERROR;

 assert(err);
 files_assert_main_repository(refs, "lock_raw_ref");

 *type = 0;



 *lock_p = lock = xcalloc(1, sizeof(*lock));

 lock->ref_name = xstrdup(refname);
 files_ref_path(refs, &ref_file, refname);

retry:
 switch (safe_create_leading_directories(ref_file.buf)) {
 case 129:
  break;
 case 130:
  if (refs_verify_refname_available(&refs->base, refname,
        extras, skip, err)) {
   if (mustexist) {





    strbuf_reset(err);
    strbuf_addf(err, "unable to resolve reference '%s'",
         refname);
   } else {





    ret = TRANSACTION_NAME_CONFLICT;
   }
  } else {





   strbuf_addf(err, "unable to create lock file %s.lock; "
        "non-directory in the way",
        ref_file.buf);
  }
  goto error_return;
 case 128:

  if (--attempts_remaining > 0)
   goto retry;

 default:
  strbuf_addf(err, "unable to create directory for %s",
       ref_file.buf);
  goto error_return;
 }

 if (hold_lock_file_for_update_timeout(
       &lock->lk, ref_file.buf, LOCK_NO_DEREF,
       get_files_ref_lock_timeout_ms()) < 0) {
  if (errno == ENOENT && --attempts_remaining > 0) {





   goto retry;
  } else {
   unable_to_lock_message(ref_file.buf, errno, err);
   goto error_return;
  }
 }






 if (files_read_raw_ref(&refs->base, refname,
          &lock->old_oid, referent, type)) {
  if (errno == ENOENT) {
   if (mustexist) {

    strbuf_addf(err, "unable to resolve reference '%s'",
         refname);
    goto error_return;
   } else {
   }
  } else if (errno == EISDIR) {
   if (mustexist) {

    strbuf_addf(err, "unable to resolve reference '%s'",
         refname);
    goto error_return;
   } else if (remove_dir_recursively(&ref_file,
         REMOVE_DIR_EMPTY_ONLY)) {
    if (refs_verify_refname_available(
          &refs->base, refname,
          extras, skip, err)) {




     ret = TRANSACTION_NAME_CONFLICT;
     goto error_return;
    } else {






     strbuf_addf(err, "there is a non-empty directory '%s' "
          "blocking reference '%s'",
          ref_file.buf, refname);
     goto error_return;
    }
   }
  } else if (errno == EINVAL && (*type & REF_ISBROKEN)) {
   strbuf_addf(err, "unable to resolve reference '%s': "
        "reference broken", refname);
   goto error_return;
  } else {
   strbuf_addf(err, "unable to resolve reference '%s': %s",
        refname, strerror(errno));
   goto error_return;
  }






  if (refs_verify_refname_available(
        refs->packed_ref_store, refname,
        extras, skip, err))
   goto error_return;
 }

 ret = 0;
 goto out;

error_return:
 unlock_ref(lock);
 *lock_p = ((void*)0);

out:
 strbuf_release(&ref_file);
 return ret;
}
