
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int right; TYPE_1__* w; scalar_t__ left; } ;
typedef TYPE_2__ pm_cell_t ;
struct TYPE_12__ {int* next; size_t choice; int * freq; } ;
struct TYPE_10__ {int freq; } ;


 int FREQ_INFTY ;
 TYPE_5__* PB ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,int,int) ;
 int pm_tree_advance (TYPE_2__*,TYPE_5__*) ;
 int pm_tree_advb (TYPE_2__*,TYPE_5__*) ;
 int pm_tree_free (TYPE_2__*,int) ;
 int stderr ;
 int verbosity ;

void pm_huffman_build (pm_cell_t *A, int N) {
  int i;
  assert ((unsigned) N < (1 << 27) && N > 1);
  A += N;
  A[0].left = 0;
  A[0].right = 15 * N;
  PB[32].freq[0] = PB[32].freq[1] = FREQ_INFTY;

  for (i = 31; i >= 0; i--) {
    PB[i].next[0] = -N;
    PB[i].freq[0] = A[-N].w->freq;
    pm_tree_advb (A, PB + i);

  }
  for (i = 2*N - 2; i > 0; i--) {

    int n = PB->next[PB->choice];
    assert (n);

    pm_tree_free (A, n);

    pm_tree_advance (A, PB);
  }
  if (verbosity > 1) {
    fprintf (stderr, "package-merge: maximal memory usage is %d+%d 8-byte cells out of %d+%d\n", N, 15 * N - A[0].right, N, 15 * N);
  }
}
