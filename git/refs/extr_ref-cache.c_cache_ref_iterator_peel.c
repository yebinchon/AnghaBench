
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int oid; } ;
struct object_id {int dummy; } ;


 int peel_object (int ,struct object_id*) ;

__attribute__((used)) static int cache_ref_iterator_peel(struct ref_iterator *ref_iterator,
       struct object_id *peeled)
{
 return peel_object(ref_iterator->oid, peeled);
}
