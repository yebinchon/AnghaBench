
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_operation {struct pending_operation* next; } ;


 struct pending_operation* pol_head ;
 struct pending_operation* pol_tail ;

void pending_operation_push (struct pending_operation *P) {
  P->next = ((void*)0);
  if (pol_head) {
    pol_tail->next = P;
    pol_tail = P;
  } else {
    pol_head = pol_tail = P;
  }
}
