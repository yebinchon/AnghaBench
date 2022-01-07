
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {scalar_t__ sorted; scalar_t__ nr; int * oid; int alloc; } ;
struct object_id {int dummy; } ;


 int ALLOC_GROW (int *,scalar_t__,int ) ;
 int oidcpy (int *,struct object_id const*) ;

void oid_array_append(struct oid_array *array, const struct object_id *oid)
{
 ALLOC_GROW(array->oid, array->nr + 1, array->alloc);
 oidcpy(&array->oid[array->nr++], oid);
 array->sorted = 0;
}
