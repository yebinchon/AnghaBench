
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;


 int for_each_ref (int ,struct ref***) ;
 int one_local_ref ;

struct ref *get_local_heads(void)
{
 struct ref *local_refs = ((void*)0), **local_tail = &local_refs;

 for_each_ref(one_local_ref, &local_tail);
 return local_refs;
}
