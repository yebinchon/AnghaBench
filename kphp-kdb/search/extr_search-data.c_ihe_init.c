
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int item_t ;
struct TYPE_15__ {TYPE_1__* dec; } ;
struct TYPE_17__ {int field; scalar_t__ doc_id; TYPE_2__ dec; } ;
struct TYPE_16__ {int tag_word; int optional_tag_weight; int* Bt; int sp; int cur0; TYPE_6__** TS; TYPE_5__ Decoder; int cur_y1; int * cur1; int * ihe_skip_advance1; int word; } ;
typedef TYPE_3__ iheap_en_t ;
typedef int hash_t ;
struct TYPE_18__ {int item; } ;
struct TYPE_14__ {scalar_t__ tp; } ;


 scalar_t__ ITEM_DELETED (int ) ;
 scalar_t__ IndexItems ;
 TYPE_6__* Root ;
 scalar_t__ adv_ilist (TYPE_5__*) ;
 int ihe_advance0 (TYPE_3__*) ;
 int ihe_dive (TYPE_3__*) ;
 int ihe_load (TYPE_3__*) ;
 int ihe_sgn (TYPE_6__*,TYPE_3__*) ;
 int ihe_skip_advance1_fast ;
 int ihe_skip_advance1_slow ;
 scalar_t__ init_ilist_decoder (TYPE_5__*,int ) ;
 scalar_t__ le_interpolative_ext ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int ihe_init (iheap_en_t *A, hash_t word, int tag, int optional_tag_weight) {
  int sgn, sp;
  memset (A, 0, sizeof (*A));
  A->tag_word = tag;
  A->optional_tag_weight = optional_tag_weight;





  A->word = word;
  A->TS[0] = Root;
  A->Bt[0] = -1;

  A->ihe_skip_advance1 = &ihe_skip_advance1_slow;
  if (init_ilist_decoder (&A->Decoder, word)) {
    if (A->Decoder.dec.dec->tp == le_interpolative_ext) {
      A->ihe_skip_advance1 = &ihe_skip_advance1_fast;
    }
    if (adv_ilist (&A->Decoder) >= 0) {
      A->cur1 = (item_t *) (IndexItems + A->Decoder.doc_id);
      A->cur_y1 = A->Decoder.field;

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


  if (ITEM_DELETED(A->cur0)) {
    ihe_advance0 (A);
  }

  return ihe_load (A);
}
