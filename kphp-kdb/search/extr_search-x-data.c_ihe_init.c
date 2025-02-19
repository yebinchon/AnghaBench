
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct item {int dummy; } ;
struct TYPE_12__ {scalar_t__ doc_id; } ;
struct TYPE_11__ {int* Bt; int sp; TYPE_4__** TS; int cur_freq_text0; int cur_freq_title0; int cur0; TYPE_3__ Decoder; struct item* cur1; int word; } ;
typedef TYPE_1__ iheap_en_t ;
typedef int hash_t ;
struct TYPE_13__ {int freq_text; int freq_title; int item; } ;


 scalar_t__ IndexItems ;
 TYPE_4__* Root ;
 scalar_t__ adv_ilist (TYPE_3__*) ;
 int ihe_dive (TYPE_1__*) ;
 int ihe_load (TYPE_1__*) ;
 int ihe_sgn (TYPE_4__*,TYPE_1__*) ;
 scalar_t__ init_ilist_decoder (TYPE_3__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int ihe_init (iheap_en_t *A, hash_t word) {
  int sgn, sp;
  memset (A, 0, sizeof (*A));
  A->word = word;
  A->TS[0] = Root;
  A->Bt[0] = -1;

  if (init_ilist_decoder (&A->Decoder, word)) {
    if (adv_ilist (&A->Decoder) >= 0) {
      A->cur1 = (struct item *) (IndexItems + A->Decoder.doc_id);
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

  A->cur_freq_title0 = A->TS[sp]->freq_title;
  A->cur_freq_text0 = A->TS[sp]->freq_text;

  return ihe_load (A);
}
