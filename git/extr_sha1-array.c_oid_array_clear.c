
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {scalar_t__ sorted; scalar_t__ alloc; scalar_t__ nr; int oid; } ;


 int FREE_AND_NULL (int ) ;

void oid_array_clear(struct oid_array *array)
{
 FREE_AND_NULL(array->oid);
 array->nr = 0;
 array->alloc = 0;
 array->sorted = 0;
}
