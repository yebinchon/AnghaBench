
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_update {int flags; int type; int refname; struct ref_lock* backend_data; int msg; int new_oid; } ;
struct ref_transaction {size_t nr; struct ref_update** updates; struct files_transaction_backend_data* backend_data; int state; } ;
struct ref_store {int dummy; } ;
struct ref_lock {int ref_name; int old_oid; } ;
struct files_transaction_backend_data {struct ref_transaction* packed_transaction; } ;
struct files_ref_store {int dummy; } ;


 int REF_DELETED_LOOSE ;
 int REF_DELETING ;
 int REF_ISPACKED ;
 int REF_ISSYMREF ;
 int REF_IS_PRUNING ;
 int REF_LOG_ONLY ;
 int REF_NEEDS_COMMIT ;
 int REF_TRANSACTION_CLOSED ;
 int REMOVE_EMPTY_PARENTS_REF ;
 int REMOVE_EMPTY_PARENTS_REFLOG ;
 struct strbuf STRBUF_INIT ;
 int TRANSACTION_GENERIC_ERROR ;
 int assert (struct strbuf*) ;
 int clear_loose_ref_cache (struct files_ref_store*) ;
 scalar_t__ commit_ref (struct ref_lock*) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 scalar_t__ files_log_ref_write (struct files_ref_store*,int ,int *,int *,int ,int,struct strbuf*) ;
 int files_ref_path (struct files_ref_store*,struct strbuf*,int ) ;
 int files_reflog_path (struct files_ref_store*,struct strbuf*,int ) ;
 int files_transaction_cleanup (struct files_ref_store*,struct ref_transaction*) ;
 int free (char*) ;
 int ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 int strbuf_addf (struct strbuf*,char*,int ,...) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int try_remove_empty_parents (struct files_ref_store*,int ,int ) ;
 scalar_t__ unlink_or_msg (int ,struct strbuf*) ;
 int unlink_or_warn (int ) ;
 int unlock_ref (struct ref_lock*) ;

__attribute__((used)) static int files_transaction_finish(struct ref_store *ref_store,
        struct ref_transaction *transaction,
        struct strbuf *err)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, 0, "ref_transaction_finish");
 size_t i;
 int ret = 0;
 struct strbuf sb = STRBUF_INIT;
 struct files_transaction_backend_data *backend_data;
 struct ref_transaction *packed_transaction;


 assert(err);

 if (!transaction->nr) {
  transaction->state = REF_TRANSACTION_CLOSED;
  return 0;
 }

 backend_data = transaction->backend_data;
 packed_transaction = backend_data->packed_transaction;


 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];
  struct ref_lock *lock = update->backend_data;

  if (update->flags & REF_NEEDS_COMMIT ||
      update->flags & REF_LOG_ONLY) {
   if (files_log_ref_write(refs,
      lock->ref_name,
      &lock->old_oid,
      &update->new_oid,
      update->msg, update->flags,
      err)) {
    char *old_msg = strbuf_detach(err, ((void*)0));

    strbuf_addf(err, "cannot update the ref '%s': %s",
         lock->ref_name, old_msg);
    free(old_msg);
    unlock_ref(lock);
    update->backend_data = ((void*)0);
    ret = TRANSACTION_GENERIC_ERROR;
    goto cleanup;
   }
  }
  if (update->flags & REF_NEEDS_COMMIT) {
   clear_loose_ref_cache(refs);
   if (commit_ref(lock)) {
    strbuf_addf(err, "couldn't set '%s'", lock->ref_name);
    unlock_ref(lock);
    update->backend_data = ((void*)0);
    ret = TRANSACTION_GENERIC_ERROR;
    goto cleanup;
   }
  }
 }
 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];
  if (update->flags & REF_DELETING &&
      !(update->flags & REF_LOG_ONLY) &&
      !(update->flags & REF_IS_PRUNING)) {
   strbuf_reset(&sb);
   files_reflog_path(refs, &sb, update->refname);
   if (!unlink_or_warn(sb.buf))
    try_remove_empty_parents(refs, update->refname,
        REMOVE_EMPTY_PARENTS_REFLOG);
  }
 }







 if (packed_transaction) {
  ret = ref_transaction_commit(packed_transaction, err);
  ref_transaction_free(packed_transaction);
  packed_transaction = ((void*)0);
  backend_data->packed_transaction = ((void*)0);
  if (ret)
   goto cleanup;
 }


 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];
  struct ref_lock *lock = update->backend_data;

  if (update->flags & REF_DELETING &&
      !(update->flags & REF_LOG_ONLY)) {
   if (!(update->type & REF_ISPACKED) ||
       update->type & REF_ISSYMREF) {

    strbuf_reset(&sb);
    files_ref_path(refs, &sb, lock->ref_name);
    if (unlink_or_msg(sb.buf, err)) {
     ret = TRANSACTION_GENERIC_ERROR;
     goto cleanup;
    }
    update->flags |= REF_DELETED_LOOSE;
   }
  }
 }

 clear_loose_ref_cache(refs);

cleanup:
 files_transaction_cleanup(refs, transaction);

 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];

  if (update->flags & REF_DELETED_LOOSE) {






   try_remove_empty_parents(refs, update->refname,
       REMOVE_EMPTY_PARENTS_REF);
  }
 }

 strbuf_release(&sb);
 return ret;
}
