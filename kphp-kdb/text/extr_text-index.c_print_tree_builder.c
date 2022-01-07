
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pm_tree_builder {int choice; size_t* next; int * freq; } ;
struct TYPE_3__ {int right; int left; } ;
typedef TYPE_1__ pm_cell_t ;


 struct pm_tree_builder* PB ;
 int fprintf (int ,char*,int,int,size_t,int ,size_t,int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static inline void print_tree_builder (pm_cell_t *A, struct pm_tree_builder *B) {
  fprintf (stderr, "TB[%d]: %d {%d, %lld} {%d: (%d, %d), %lld}\n", (int) (B - PB), B->choice, B->next[0], B->freq[0], B->next[1], A[B->next[1]].left, A[B->next[1]].right, B->freq[1]);
}
