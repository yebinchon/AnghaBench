
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pm_tree_builder {int* next; long long* freq; int choice; } ;
struct TYPE_5__ {TYPE_1__* w; } ;
typedef TYPE_2__ pm_cell_t ;
struct TYPE_4__ {long long freq; } ;


 long long FREQ_INFTY ;

__attribute__((used)) static void pm_tree_adva (pm_cell_t *A, struct pm_tree_builder *B) {
  if (!B->next[0]) {
    return;
  }
  int n = ++B->next[0];
  if (!n) {
    B->freq[0] = FREQ_INFTY;
    B->choice = (B->next[1] != 0);
    return;
  }
  long long f = A[n].w->freq;
  B->freq[0] = f;
  B->choice = (B->freq[1] < f);
}
