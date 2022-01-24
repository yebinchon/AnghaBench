#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  treespace_t ;
typedef  void* treeref_t ;
struct intree_node {int left; void* right; int /*<<< orphan*/  z; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct intree_node*,void*) ; 
 struct intree_node* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

treeref_t FUNC4 (treespace_t TS, int *A, int nodes) {
  if (!nodes) {
    return 0;
  }
  static treeref_t st[128];
  static unsigned sty[128];
  int sp = 0, i, prev = 0;
  for (i = 0; i < nodes; i++) {
    FUNC2 (*A > prev);
    prev = *A;
    treeref_t N = FUNC3 (TS);
    struct intree_node *NP = FUNC1 (N);
    NP->x = *A++;
    NP->z = *A++;
    unsigned NY = FUNC0(NP, N);
    int last = 0;
    while (sp) {
      if (NY <= sty[sp - 1]) {
	struct intree_node *TC = FUNC1 (st[sp - 1]);
	TC->right = N;
	break;
      }
      last = st[--sp];
    }
    NP->left = last;
    NP->right = 0;
    st[sp] = N;
    sty[sp] = NY;
    FUNC2 (++sp < 128);
  }

  return st[0];
}