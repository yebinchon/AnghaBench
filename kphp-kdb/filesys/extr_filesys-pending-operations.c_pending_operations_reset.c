
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dyn_mark (int ) ;
 int po_mrk ;
 char po_use_mark ;
 int pol_head ;
 int * pol_tail ;

void pending_operations_reset (char use_mark) {
  pol_head = pol_tail = ((void*)0);
  po_use_mark = use_mark;
  if (use_mark) {
    dyn_mark (po_mrk);
  }
}
