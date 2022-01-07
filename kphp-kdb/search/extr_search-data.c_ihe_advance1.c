
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int item_t ;
struct TYPE_6__ {int field; scalar_t__ doc_id; } ;
struct TYPE_5__ {int * cur1; TYPE_4__ Decoder; int cur_y1; } ;
typedef TYPE_1__ iheap_en_t ;


 scalar_t__ IndexItems ;
 scalar_t__ adv_ilist (TYPE_4__*) ;
 int ihe_load (TYPE_1__*) ;

__attribute__((used)) static int ihe_advance1 (iheap_en_t *A) {
  if (adv_ilist (&A->Decoder) >= 0) {
    A->cur1 = (item_t *) (IndexItems + A->Decoder.doc_id);
    A->cur_y1 = A->Decoder.field;
  } else {
    A->cur1 = 0;

  }
  return ihe_load (A);
}
