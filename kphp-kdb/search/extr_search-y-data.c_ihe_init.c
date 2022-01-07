
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int item_t ;
struct TYPE_13__ {scalar_t__ doc_id; } ;
struct TYPE_12__ {int* Bt; int sp; TYPE_5__** TS; int cur0; TYPE_4__ Decoder; int * cur1; int word; } ;
typedef TYPE_1__ iheap_en_t ;
typedef int hash_t ;
struct TYPE_14__ {int item; } ;


 scalar_t__ IndexItems ;
 TYPE_5__* Root ;
 scalar_t__ adv_ilist (TYPE_4__*) ;
 int ihe_dive (TYPE_1__*) ;
 int ihe_load (TYPE_1__*) ;
 int ihe_sgn (TYPE_5__*,TYPE_1__*) ;
 scalar_t__ init_ilist_decoder (TYPE_1__*,TYPE_4__*,int const) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int ihe_init (iheap_en_t *A) {
  const hash_t word = A->word;
  int sgn, sp;
  memset (A, 0, sizeof (*A));





  A->word = word;
  A->TS[0] = Root;
  A->Bt[0] = -1;

  if (init_ilist_decoder (A, &A->Decoder, word)) {
    if (adv_ilist (&A->Decoder) >= 0) {
      A->cur1 = (item_t *) (IndexItems + A->Decoder.doc_id);
    }
  }

  if (!Root) {
    sgn = 1;
  } else {
    sgn = ihe_dive (A);
    sp = A->sp;

    if (sgn < 0 && A->Bt[sp] >= 0) {
      sp = A->Bt[sp];
      sgn = ihe_sgn (A->TS[sp], A);
    }
  }

  if (sgn != 0) {
    A->sp = -1;
    A->cur0 = 0;
    return ihe_load (A);
  }

  A->sp = sp;
  A->cur0 = A->TS[sp]->item;


  return ihe_load (A);
}
