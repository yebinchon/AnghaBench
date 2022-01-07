
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int dummy; } ;
struct object_id {int dummy; } ;


 int FOR_EACH_OBJECT_PROMISOR_ONLY ;
 int add_promisor_object ;
 int for_each_packed_object (int ,struct oidset*,int ) ;
 scalar_t__ has_promisor_remote () ;
 int oidset_contains (struct oidset*,struct object_id const*) ;

int is_promisor_object(const struct object_id *oid)
{
 static struct oidset promisor_objects;
 static int promisor_objects_prepared;

 if (!promisor_objects_prepared) {
  if (has_promisor_remote()) {
   for_each_packed_object(add_promisor_object,
            &promisor_objects,
            FOR_EACH_OBJECT_PROMISOR_ONLY);
  }
  promisor_objects_prepared = 1;
 }
 return oidset_contains(&promisor_objects, oid);
}
