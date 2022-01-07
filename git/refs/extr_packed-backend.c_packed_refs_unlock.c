
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct packed_ref_store {int lock; } ;


 int BUG (char*) ;
 int REF_STORE_READ ;
 int REF_STORE_WRITE ;
 int is_lock_file_locked (int *) ;
 struct packed_ref_store* packed_downcast (struct ref_store*,int,char*) ;
 int rollback_lock_file (int *) ;

void packed_refs_unlock(struct ref_store *ref_store)
{
 struct packed_ref_store *refs = packed_downcast(
   ref_store,
   REF_STORE_READ | REF_STORE_WRITE,
   "packed_refs_unlock");

 if (!is_lock_file_locked(&refs->lock))
  BUG("packed_refs_unlock() called when not locked");
 rollback_lock_file(&refs->lock);
}
