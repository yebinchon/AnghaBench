
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int item_t ;
struct TYPE_5__ {int field; scalar_t__ doc_id; } ;
struct TYPE_4__ {int * cur1; TYPE_3__ Decoder; int cur_y1; } ;
typedef TYPE_1__ iheap_en_t ;


 scalar_t__ IndexItems ;
 scalar_t__ adv_ilist (TYPE_3__*) ;

__attribute__((used)) static int ihe_advance1_noload (iheap_en_t *A) {
  if (adv_ilist (&A->Decoder) >= 0) {
    A->cur1 = (item_t *) (IndexItems + A->Decoder.doc_id);
    A->cur_y1 = A->Decoder.field;
    return 1;
  } else {
    A->cur1 = 0;

    return 0;
  }
}
