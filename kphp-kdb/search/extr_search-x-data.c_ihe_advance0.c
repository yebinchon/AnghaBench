
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int freq_text; int freq_title; int item; struct TYPE_6__* right; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_7__ {int sp; int* Bt; int cur0; int cur_freq_text0; int cur_freq_title0; TYPE_1__** TS; } ;
typedef TYPE_2__ iheap_en_t ;


 int MAX_TREE_DEPTH ;
 int assert (int) ;
 scalar_t__ ihe_dive (TYPE_2__*) ;
 int ihe_load (TYPE_2__*) ;

__attribute__((used)) static int ihe_advance0 (iheap_en_t *A) {
  int sp = A->sp;
  tree_t *T;



  assert (A->cur0 && sp >= 0);

  T = A->TS[sp];

  do {
    if (!T->right) {
      sp = A->Bt[sp];
      if (sp < 0) {
        break;
      }
      T = A->TS[sp];
    } else {
      assert (sp < MAX_TREE_DEPTH-1);
      A->TS[++sp] = T->right;
      A->Bt[sp] = A->Bt[sp-1];
      A->sp = sp;

      if (ihe_dive(A) != 0) {
        sp = -1;
        break;
      }
      sp = A->sp;
      T = A->TS[sp];
    }
    A->cur0 = T->item;
    A->cur_freq_title0 = T->freq_title;
    A->cur_freq_text0 = T->freq_text;
  } while (0);



  if (sp < 0) {
    A->sp = -1;
    A->cur0 = 0;
    return ihe_load (A);
  }

  A->sp = sp;

  return ihe_load (A);
}
