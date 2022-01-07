
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mergesort_sublist {void const* ptr; int len; } ;



__attribute__((used)) static void *pop_item(struct mergesort_sublist *l,
        void *(*get_next_fn)(const void *))
{
 void *p = l->ptr;
 l->ptr = get_next_fn(l->ptr);
 l->len = l->ptr ? (l->len - 1) : 0;
 return p;
}
