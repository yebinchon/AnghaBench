
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_update {int flags; int refname; int new_oid; } ;
struct ref_transaction {size_t nr; struct ref_update** updates; } ;
struct ref_store {int dummy; } ;
struct packed_ref_store {int lock; } ;
struct object_id {int dummy; } ;


 int BUG (char*) ;
 scalar_t__ ENOENT ;
 int REF_HAVE_NEW ;
 int REF_HAVE_OLD ;
 int REF_STORE_READ ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ errno ;
 int is_lock_file_locked (int *) ;
 int is_null_oid (int *) ;
 struct packed_ref_store* packed_downcast (struct ref_store*,int ,char*) ;
 int refs_read_raw_ref (struct ref_store*,int ,struct object_id*,struct strbuf*,unsigned int*) ;
 int strbuf_release (struct strbuf*) ;

int is_packed_transaction_needed(struct ref_store *ref_store,
     struct ref_transaction *transaction)
{
 struct packed_ref_store *refs = packed_downcast(
   ref_store,
   REF_STORE_READ,
   "is_packed_transaction_needed");
 struct strbuf referent = STRBUF_INIT;
 size_t i;
 int ret;

 if (!is_lock_file_locked(&refs->lock))
  BUG("is_packed_transaction_needed() called while unlocked");
 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];

  if (update->flags & REF_HAVE_OLD)

   return 1;

  if ((update->flags & REF_HAVE_NEW) && !is_null_oid(&update->new_oid))

   return 1;
 }
 ret = 0;
 for (i = 0; i < transaction->nr; i++) {
  struct ref_update *update = transaction->updates[i];
  unsigned int type;
  struct object_id oid;

  if (!(update->flags & REF_HAVE_NEW))




   continue;

  if (!refs_read_raw_ref(ref_store, update->refname,
           &oid, &referent, &type) ||
      errno != ENOENT) {




   ret = 1;
   break;
  }
 }

 strbuf_release(&referent);
 return ret;
}
