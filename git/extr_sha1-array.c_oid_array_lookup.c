
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int nr; int oid; int sorted; } ;
struct object_id {int hash; } ;


 int oid_array_sort (struct oid_array*) ;
 int sha1_access ;
 int sha1_pos (int ,int ,int ,int ) ;

int oid_array_lookup(struct oid_array *array, const struct object_id *oid)
{
 if (!array->sorted)
  oid_array_sort(array);
 return sha1_pos(oid->hash, array->oid, array->nr, sha1_access);
}
