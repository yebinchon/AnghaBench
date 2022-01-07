
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_transaction {int state; struct packed_transaction_backend_data* backend_data; } ;
struct packed_transaction_backend_data {scalar_t__ own_lock; int updates; } ;
struct packed_ref_store {int base; int lock; int tempfile; } ;


 int REF_TRANSACTION_CLOSED ;
 int delete_tempfile (int *) ;
 int free (struct packed_transaction_backend_data*) ;
 scalar_t__ is_lock_file_locked (int *) ;
 scalar_t__ is_tempfile_active (int ) ;
 int packed_refs_unlock (int *) ;
 int string_list_clear (int *,int ) ;

__attribute__((used)) static void packed_transaction_cleanup(struct packed_ref_store *refs,
           struct ref_transaction *transaction)
{
 struct packed_transaction_backend_data *data = transaction->backend_data;

 if (data) {
  string_list_clear(&data->updates, 0);

  if (is_tempfile_active(refs->tempfile))
   delete_tempfile(&refs->tempfile);

  if (data->own_lock && is_lock_file_locked(&refs->lock)) {
   packed_refs_unlock(&refs->base);
   data->own_lock = 0;
  }

  free(data);
  transaction->backend_data = ((void*)0);
 }

 transaction->state = REF_TRANSACTION_CLOSED;
}
