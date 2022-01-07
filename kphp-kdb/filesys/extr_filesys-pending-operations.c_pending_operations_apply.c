
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_operation {struct pending_operation* next; } ;


 int dyn_release (int ) ;
 int pending_operation_apply (struct pending_operation*) ;
 int pending_operations_clear () ;
 int po_mrk ;
 scalar_t__ po_use_mark ;
 struct pending_operation* pol_head ;
 int * pol_tail ;

void pending_operations_apply (void) {
  struct pending_operation *P;
  for (P = pol_head; P != ((void*)0); P = P->next) {
    pending_operation_apply (P);
  }
  if (po_use_mark) {
    dyn_release (po_mrk);
  } else {
    pending_operations_clear ();
  }
  pol_head = pol_tail = ((void*)0);
}
