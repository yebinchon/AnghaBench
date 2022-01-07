
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int sorted; int nr; int oid; } ;


 int QSORT (int ,int ,int ) ;
 int void_hashcmp ;

__attribute__((used)) static void oid_array_sort(struct oid_array *array)
{
 QSORT(array->oid, array->nr, void_hashcmp);
 array->sorted = 1;
}
