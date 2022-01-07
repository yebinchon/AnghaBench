
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* next; } ;


 struct ref* copy_ref (struct ref const*) ;

struct ref *copy_ref_list(const struct ref *ref)
{
 struct ref *ret = ((void*)0);
 struct ref **tail = &ret;
 while (ref) {
  *tail = copy_ref(ref);
  ref = ref->next;
  tail = &((*tail)->next);
 }
 return ret;
}
