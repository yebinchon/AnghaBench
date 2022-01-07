
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct ref_update* util; } ;
struct strbuf {int dummy; } ;
struct ref_update {int refname; } ;
struct ref_transaction {size_t nr; int state; struct ref_update** updates; struct packed_transaction_backend_data* backend_data; } ;
struct ref_store {int dummy; } ;
struct packed_transaction_backend_data {int own_lock; int updates; } ;
struct packed_ref_store {int lock; } ;


 int REF_STORE_ODB ;
 int REF_STORE_READ ;
 int REF_STORE_WRITE ;
 int REF_TRANSACTION_PREPARED ;
 int TRANSACTION_GENERIC_ERROR ;
 int is_lock_file_locked (int *) ;
 struct packed_ref_store* packed_downcast (struct ref_store*,int,char*) ;
 scalar_t__ packed_refs_lock (struct ref_store*,int ,struct strbuf*) ;
 int packed_transaction_cleanup (struct packed_ref_store*,struct ref_transaction*) ;
 scalar_t__ ref_update_reject_duplicates (int *,struct strbuf*) ;
 struct string_list_item* string_list_append (int *,int ) ;
 int string_list_init (int *,int ) ;
 int string_list_sort (int *) ;
 scalar_t__ write_with_updates (struct packed_ref_store*,int *,struct strbuf*) ;
 struct packed_transaction_backend_data* xcalloc (int,int) ;

__attribute__((used)) static int packed_transaction_prepare(struct ref_store *ref_store,
          struct ref_transaction *transaction,
          struct strbuf *err)
{
 struct packed_ref_store *refs = packed_downcast(
   ref_store,
   REF_STORE_READ | REF_STORE_WRITE | REF_STORE_ODB,
   "ref_transaction_prepare");
 struct packed_transaction_backend_data *data;
 size_t i;
 int ret = TRANSACTION_GENERIC_ERROR;
 data = xcalloc(1, sizeof(*data));
 string_list_init(&data->updates, 0);

 transaction->backend_data = data;





 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];
  struct string_list_item *item =
   string_list_append(&data->updates, update->refname);


  item->util = update;
 }
 string_list_sort(&data->updates);

 if (ref_update_reject_duplicates(&data->updates, err))
  goto failure;

 if (!is_lock_file_locked(&refs->lock)) {
  if (packed_refs_lock(ref_store, 0, err))
   goto failure;
  data->own_lock = 1;
 }

 if (write_with_updates(refs, &data->updates, err))
  goto failure;

 transaction->state = REF_TRANSACTION_PREPARED;
 return 0;

failure:
 packed_transaction_cleanup(refs, transaction);
 return ret;
}
