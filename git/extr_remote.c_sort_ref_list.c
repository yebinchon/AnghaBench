
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;


 struct ref* llist_mergesort (struct ref*,int ,int ,int (*) (void const*,void const*)) ;
 int ref_list_get_next ;
 int ref_list_set_next ;

void sort_ref_list(struct ref **l, int (*cmp)(const void *, const void *))
{
 *l = llist_mergesort(*l, ref_list_get_next, ref_list_set_next, cmp);
}
