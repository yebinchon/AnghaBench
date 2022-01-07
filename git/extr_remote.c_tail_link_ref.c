
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* next; } ;



__attribute__((used)) static void tail_link_ref(struct ref *ref, struct ref ***tail)
{
 **tail = ref;
 while (ref->next)
  ref = ref->next;
 *tail = &ref->next;
}
