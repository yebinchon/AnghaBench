
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_update {struct ref_lock* backend_data; } ;
struct ref_transaction {size_t nr; int state; struct ref_update** updates; struct files_transaction_backend_data* backend_data; } ;
struct ref_lock {int dummy; } ;
struct files_transaction_backend_data {scalar_t__ packed_refs_locked; scalar_t__ packed_transaction; } ;
struct files_ref_store {int packed_ref_store; } ;


 int REF_TRANSACTION_CLOSED ;
 struct strbuf STRBUF_INIT ;
 int error (char*,int ) ;
 int free (struct files_transaction_backend_data*) ;
 int packed_refs_unlock (int ) ;
 scalar_t__ ref_transaction_abort (scalar_t__,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int unlock_ref (struct ref_lock*) ;

__attribute__((used)) static void files_transaction_cleanup(struct files_ref_store *refs,
          struct ref_transaction *transaction)
{
 size_t i;
 struct files_transaction_backend_data *backend_data =
  transaction->backend_data;
 struct strbuf err = STRBUF_INIT;

 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];
  struct ref_lock *lock = update->backend_data;

  if (lock) {
   unlock_ref(lock);
   update->backend_data = ((void*)0);
  }
 }

 if (backend_data->packed_transaction &&
     ref_transaction_abort(backend_data->packed_transaction, &err)) {
  error("error aborting transaction: %s", err.buf);
  strbuf_release(&err);
 }

 if (backend_data->packed_refs_locked)
  packed_refs_unlock(refs->packed_ref_store);

 free(backend_data);

 transaction->state = REF_TRANSACTION_CLOSED;
}
