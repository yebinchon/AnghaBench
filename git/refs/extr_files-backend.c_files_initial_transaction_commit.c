
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct ref_update {int flags; int old_oid; int new_oid; int refname; } ;
struct ref_transaction {scalar_t__ state; size_t nr; struct ref_update** updates; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int packed_ref_store; int base; } ;


 int BUG (char*) ;
 int REF_HAVE_OLD ;
 int REF_STORE_WRITE ;
 scalar_t__ REF_TRANSACTION_CLOSED ;
 scalar_t__ REF_TRANSACTION_OPEN ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int TRANSACTION_GENERIC_ERROR ;
 int TRANSACTION_NAME_CONFLICT ;
 int assert (struct strbuf*) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 scalar_t__ initial_ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int is_null_oid (int *) ;
 scalar_t__ packed_refs_lock (int ,int ,struct strbuf*) ;
 int packed_refs_unlock (int ) ;
 int ref_present ;
 struct ref_transaction* ref_store_transaction_begin (int ,struct strbuf*) ;
 int ref_transaction_add_update (struct ref_transaction*,int ,int,int *,int *,int *) ;
 int ref_transaction_free (struct ref_transaction*) ;
 scalar_t__ ref_update_reject_duplicates (struct string_list*,struct strbuf*) ;
 scalar_t__ refs_for_each_rawref (int *,int ,struct string_list*) ;
 scalar_t__ refs_verify_refname_available (int *,int ,struct string_list*,int *,struct strbuf*) ;
 int string_list_append (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;

__attribute__((used)) static int files_initial_transaction_commit(struct ref_store *ref_store,
         struct ref_transaction *transaction,
         struct strbuf *err)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_WRITE,
          "initial_ref_transaction_commit");
 size_t i;
 int ret = 0;
 struct string_list affected_refnames = STRING_LIST_INIT_NODUP;
 struct ref_transaction *packed_transaction = ((void*)0);

 assert(err);

 if (transaction->state != REF_TRANSACTION_OPEN)
  BUG("commit called for transaction that is not open");


 for (i = 0; i < transaction->nr; i++)
  string_list_append(&affected_refnames,
       transaction->updates[i]->refname);
 string_list_sort(&affected_refnames);
 if (ref_update_reject_duplicates(&affected_refnames, err)) {
  ret = TRANSACTION_GENERIC_ERROR;
  goto cleanup;
 }
 if (refs_for_each_rawref(&refs->base, ref_present,
     &affected_refnames))
  BUG("initial ref transaction called with existing refs");

 packed_transaction = ref_store_transaction_begin(refs->packed_ref_store, err);
 if (!packed_transaction) {
  ret = TRANSACTION_GENERIC_ERROR;
  goto cleanup;
 }

 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];

  if ((update->flags & REF_HAVE_OLD) &&
      !is_null_oid(&update->old_oid))
   BUG("initial ref transaction with old_sha1 set");
  if (refs_verify_refname_available(&refs->base, update->refname,
        &affected_refnames, ((void*)0),
        err)) {
   ret = TRANSACTION_NAME_CONFLICT;
   goto cleanup;
  }





  ref_transaction_add_update(packed_transaction, update->refname,
        update->flags & ~REF_HAVE_OLD,
        &update->new_oid, &update->old_oid,
        ((void*)0));
 }

 if (packed_refs_lock(refs->packed_ref_store, 0, err)) {
  ret = TRANSACTION_GENERIC_ERROR;
  goto cleanup;
 }

 if (initial_ref_transaction_commit(packed_transaction, err)) {
  ret = TRANSACTION_GENERIC_ERROR;
 }

 packed_refs_unlock(refs->packed_ref_store);
cleanup:
 if (packed_transaction)
  ref_transaction_free(packed_transaction);
 transaction->state = REF_TRANSACTION_CLOSED;
 string_list_clear(&affected_refnames, 0);
 return ret;
}
