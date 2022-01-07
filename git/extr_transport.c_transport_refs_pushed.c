
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int status; struct ref* next; } ;





int transport_refs_pushed(struct ref *ref)
{
 for (; ref; ref = ref->next) {
  switch(ref->status) {
  case 129:
  case 128:
   break;
  default:
   return 1;
  }
 }
 return 0;
}
