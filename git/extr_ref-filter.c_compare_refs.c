
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_sorting {struct ref_sorting* next; } ;
struct ref_array_item {int dummy; } ;


 int cmp_ref_sorting (struct ref_sorting*,struct ref_array_item*,struct ref_array_item*) ;

__attribute__((used)) static int compare_refs(const void *a_, const void *b_, void *ref_sorting)
{
 struct ref_array_item *a = *((struct ref_array_item **)a_);
 struct ref_array_item *b = *((struct ref_array_item **)b_);
 struct ref_sorting *s;

 for (s = ref_sorting; s; s = s->next) {
  int cmp = cmp_ref_sorting(s, a, b);
  if (cmp)
   return cmp;
 }
 return 0;
}
