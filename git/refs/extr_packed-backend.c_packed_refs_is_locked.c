
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct packed_ref_store {int lock; } ;


 int REF_STORE_READ ;
 int REF_STORE_WRITE ;
 int is_lock_file_locked (int *) ;
 struct packed_ref_store* packed_downcast (struct ref_store*,int,char*) ;

int packed_refs_is_locked(struct ref_store *ref_store)
{
 struct packed_ref_store *refs = packed_downcast(
   ref_store,
   REF_STORE_READ | REF_STORE_WRITE,
   "packed_refs_is_locked");

 return is_lock_file_locked(&refs->lock);
}
