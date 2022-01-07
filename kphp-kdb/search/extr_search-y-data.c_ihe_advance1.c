
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int item_t ;
struct TYPE_7__ {scalar_t__ doc_id; } ;
struct TYPE_6__ {int * cur1; TYPE_5__ Decoder; } ;
typedef TYPE_1__ iheap_en_t ;


 scalar_t__ IndexItems ;
 scalar_t__ adv_ilist (TYPE_5__*) ;
 int ihe_load (TYPE_1__*) ;
 int ihe_load_I1_set (TYPE_1__*) ;

__attribute__((used)) static int ihe_advance1 (iheap_en_t *A) {
  if (adv_ilist (&A->Decoder) >= 0) {
    A->cur1 = (item_t *) (IndexItems + A->Decoder.doc_id);
    return ihe_load_I1_set (A);
  }
  A->cur1 = ((void*)0);
  return ihe_load (A);
}
