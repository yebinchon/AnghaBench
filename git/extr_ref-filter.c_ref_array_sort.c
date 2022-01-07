
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_sorting {int dummy; } ;
struct ref_array {int nr; int items; } ;


 int QSORT_S (int ,int ,int ,struct ref_sorting*) ;
 int compare_refs ;

void ref_array_sort(struct ref_sorting *sorting, struct ref_array *array)
{
 QSORT_S(array->items, array->nr, compare_refs, sorting);
}
