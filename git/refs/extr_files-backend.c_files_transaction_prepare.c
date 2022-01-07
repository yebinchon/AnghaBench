
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct ref_update* util; } ;
struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct ref_update {int flags; int new_oid; int refname; } ;
struct ref_transaction {size_t nr; int state; struct ref_update** updates; struct files_transaction_backend_data* backend_data; } ;
struct ref_store {int dummy; } ;
struct files_transaction_backend_data {int packed_refs_locked; struct ref_transaction* packed_transaction; } ;
struct files_ref_store {int packed_ref_store; } ;


 int BUG (char*) ;
 int FREE_AND_NULL (char*) ;
 int REF_DELETING ;
 int REF_HAVE_NEW ;
 int REF_ISSYMREF ;
 int REF_IS_PRUNING ;
 int REF_LOG_ONLY ;
 int REF_NO_DEREF ;
 int REF_STORE_WRITE ;
 int REF_TRANSACTION_PREPARED ;
 int RESOLVE_REF_NO_RECURSE ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int TRANSACTION_GENERIC_ERROR ;
 int assert (struct strbuf*) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 int files_transaction_cleanup (struct files_ref_store*,struct ref_transaction*) ;
 int free (char*) ;
 scalar_t__ is_packed_transaction_needed (int ,struct ref_transaction*) ;
 int lock_ref_for_update (struct files_ref_store*,struct ref_update*,struct ref_transaction*,char*,struct string_list*,struct strbuf*) ;
 scalar_t__ packed_refs_lock (int ,int ,struct strbuf*) ;
 struct ref_transaction* ref_store_transaction_begin (int ,struct strbuf*) ;
 scalar_t__ ref_transaction_abort (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_add_update (struct ref_transaction*,int ,int,int *,int *,int *) ;
 int ref_transaction_free (struct ref_transaction*) ;
 int ref_transaction_prepare (struct ref_transaction*,struct strbuf*) ;
 scalar_t__ ref_update_reject_duplicates (struct string_list*,struct strbuf*) ;
 char* refs_resolve_refdup (struct ref_store*,char*,int ,int *,int*) ;
 struct string_list_item* string_list_append (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;
 struct files_transaction_backend_data* xcalloc (int,int) ;

__attribute__((used)) static int files_transaction_prepare(struct ref_store *ref_store,
         struct ref_transaction *transaction,
         struct strbuf *err)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_WRITE,
          "ref_transaction_prepare");
 size_t i;
 int ret = 0;
 struct string_list affected_refnames = STRING_LIST_INIT_NODUP;
 char *head_ref = ((void*)0);
 int head_type;
 struct files_transaction_backend_data *backend_data;
 struct ref_transaction *packed_transaction = ((void*)0);

 assert(err);

 if (!transaction->nr)
  goto cleanup;

 backend_data = xcalloc(1, sizeof(*backend_data));
 transaction->backend_data = backend_data;
 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];
  struct string_list_item *item =
   string_list_append(&affected_refnames, update->refname);

  if ((update->flags & REF_IS_PRUNING) &&
      !(update->flags & REF_NO_DEREF))
   BUG("REF_IS_PRUNING set without REF_NO_DEREF");






  item->util = update;
 }
 string_list_sort(&affected_refnames);
 if (ref_update_reject_duplicates(&affected_refnames, err)) {
  ret = TRANSACTION_GENERIC_ERROR;
  goto cleanup;
 }
 head_ref = refs_resolve_refdup(ref_store, "HEAD",
           RESOLVE_REF_NO_RECURSE,
           ((void*)0), &head_type);

 if (head_ref && !(head_type & REF_ISSYMREF)) {
  FREE_AND_NULL(head_ref);
 }
 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];

  ret = lock_ref_for_update(refs, update, transaction,
       head_ref, &affected_refnames, err);
  if (ret)
   goto cleanup;

  if (update->flags & REF_DELETING &&
      !(update->flags & REF_LOG_ONLY) &&
      !(update->flags & REF_IS_PRUNING)) {




   if (!packed_transaction) {
    packed_transaction = ref_store_transaction_begin(
      refs->packed_ref_store, err);
    if (!packed_transaction) {
     ret = TRANSACTION_GENERIC_ERROR;
     goto cleanup;
    }

    backend_data->packed_transaction =
     packed_transaction;
   }

   ref_transaction_add_update(
     packed_transaction, update->refname,
     REF_HAVE_NEW | REF_NO_DEREF,
     &update->new_oid, ((void*)0),
     ((void*)0));
  }
 }

 if (packed_transaction) {
  if (packed_refs_lock(refs->packed_ref_store, 0, err)) {
   ret = TRANSACTION_GENERIC_ERROR;
   goto cleanup;
  }
  backend_data->packed_refs_locked = 1;

  if (is_packed_transaction_needed(refs->packed_ref_store,
       packed_transaction)) {
   ret = ref_transaction_prepare(packed_transaction, err);






   if (ret) {
    ref_transaction_free(packed_transaction);
    backend_data->packed_transaction = ((void*)0);
   }
  } else {
   backend_data->packed_transaction = ((void*)0);
   if (ref_transaction_abort(packed_transaction, err)) {
    ret = TRANSACTION_GENERIC_ERROR;
    goto cleanup;
   }
  }
 }

cleanup:
 free(head_ref);
 string_list_clear(&affected_refnames, 0);

 if (ret)
  files_transaction_cleanup(refs, transaction);
 else
  transaction->state = REF_TRANSACTION_PREPARED;

 return ret;
}
