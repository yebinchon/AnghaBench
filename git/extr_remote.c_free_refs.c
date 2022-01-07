
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* next; } ;


 int free_one_ref (struct ref*) ;

void free_refs(struct ref *ref)
{
 struct ref *next;
 while (ref) {
  next = ref->next;
  free_one_ref(ref);
  ref = next;
 }
}
