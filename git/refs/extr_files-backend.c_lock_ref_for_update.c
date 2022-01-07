
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int buf; } ;
struct ref_update {int flags; int type; int refname; struct ref_lock* backend_data; int new_oid; struct ref_update* parent_update; int old_oid; } ;
struct ref_transaction {int dummy; } ;
struct ref_lock {int old_oid; } ;
struct files_ref_store {int base; } ;


 int REF_DELETING ;
 int REF_HAVE_NEW ;
 int REF_HAVE_OLD ;
 int REF_ISSYMREF ;
 int REF_LOG_ONLY ;
 int REF_NEEDS_COMMIT ;
 int REF_NO_DEREF ;
 struct strbuf STRBUF_INIT ;
 int TRANSACTION_GENERIC_ERROR ;
 scalar_t__ check_old_oid (struct ref_update*,int *,struct strbuf*) ;
 scalar_t__ close_ref_gently (struct ref_lock*) ;
 int files_assert_main_repository (struct files_ref_store*,char*) ;
 int free (char*) ;
 scalar_t__ is_null_oid (int *) ;
 int lock_raw_ref (struct files_ref_store*,int ,int,struct string_list*,int *,struct ref_lock**,struct strbuf*,int*,struct strbuf*) ;
 int oidcpy (int *,int *) ;
 scalar_t__ oideq (int *,int *) ;
 int original_update_refname (struct ref_update*) ;
 scalar_t__ refs_read_ref_full (int *,int ,int ,int *,int *) ;
 int split_head_update (struct ref_update*,struct ref_transaction*,char const*,struct string_list*,struct strbuf*) ;
 int split_symref_update (struct ref_update*,int ,struct ref_transaction*,struct string_list*,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,int ,...) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ write_ref_to_lockfile (struct ref_lock*,int *,struct strbuf*) ;

__attribute__((used)) static int lock_ref_for_update(struct files_ref_store *refs,
          struct ref_update *update,
          struct ref_transaction *transaction,
          const char *head_ref,
          struct string_list *affected_refnames,
          struct strbuf *err)
{
 struct strbuf referent = STRBUF_INIT;
 int mustexist = (update->flags & REF_HAVE_OLD) &&
  !is_null_oid(&update->old_oid);
 int ret = 0;
 struct ref_lock *lock;

 files_assert_main_repository(refs, "lock_ref_for_update");

 if ((update->flags & REF_HAVE_NEW) && is_null_oid(&update->new_oid))
  update->flags |= REF_DELETING;

 if (head_ref) {
  ret = split_head_update(update, transaction, head_ref,
     affected_refnames, err);
  if (ret)
   goto out;
 }

 ret = lock_raw_ref(refs, update->refname, mustexist,
      affected_refnames, ((void*)0),
      &lock, &referent,
      &update->type, err);
 if (ret) {
  char *reason;

  reason = strbuf_detach(err, ((void*)0));
  strbuf_addf(err, "cannot lock ref '%s': %s",
       original_update_refname(update), reason);
  free(reason);
  goto out;
 }

 update->backend_data = lock;

 if (update->type & REF_ISSYMREF) {
  if (update->flags & REF_NO_DEREF) {





   if (refs_read_ref_full(&refs->base,
            referent.buf, 0,
            &lock->old_oid, ((void*)0))) {
    if (update->flags & REF_HAVE_OLD) {
     strbuf_addf(err, "cannot lock ref '%s': "
          "error reading reference",
          original_update_refname(update));
     ret = TRANSACTION_GENERIC_ERROR;
     goto out;
    }
   } else if (check_old_oid(update, &lock->old_oid, err)) {
    ret = TRANSACTION_GENERIC_ERROR;
    goto out;
   }
  } else {







   ret = split_symref_update(update,
        referent.buf, transaction,
        affected_refnames, err);
   if (ret)
    goto out;
  }
 } else {
  struct ref_update *parent_update;

  if (check_old_oid(update, &lock->old_oid, err)) {
   ret = TRANSACTION_GENERIC_ERROR;
   goto out;
  }






  for (parent_update = update->parent_update;
       parent_update;
       parent_update = parent_update->parent_update) {
   struct ref_lock *parent_lock = parent_update->backend_data;
   oidcpy(&parent_lock->old_oid, &lock->old_oid);
  }
 }

 if ((update->flags & REF_HAVE_NEW) &&
     !(update->flags & REF_DELETING) &&
     !(update->flags & REF_LOG_ONLY)) {
  if (!(update->type & REF_ISSYMREF) &&
      oideq(&lock->old_oid, &update->new_oid)) {




  } else if (write_ref_to_lockfile(lock, &update->new_oid,
       err)) {
   char *write_err = strbuf_detach(err, ((void*)0));





   update->backend_data = ((void*)0);
   strbuf_addf(err,
        "cannot update ref '%s': %s",
        update->refname, write_err);
   free(write_err);
   ret = TRANSACTION_GENERIC_ERROR;
   goto out;
  } else {
   update->flags |= REF_NEEDS_COMMIT;
  }
 }
 if (!(update->flags & REF_NEEDS_COMMIT)) {





  if (close_ref_gently(lock)) {
   strbuf_addf(err, "couldn't close '%s.lock'",
        update->refname);
   ret = TRANSACTION_GENERIC_ERROR;
   goto out;
  }
 }

out:
 strbuf_release(&referent);
 return ret;
}
