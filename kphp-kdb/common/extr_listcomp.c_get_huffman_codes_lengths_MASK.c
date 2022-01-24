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
struct ccp_list_entry {int freq; int leaf_value; struct ccp_list_entry* next; } ;
typedef  int /*<<< orphan*/  dyn_mark_t ;
typedef  int /*<<< orphan*/  E ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cmp_ccp_list_entries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,struct ccp_list_entry*) ; 
 struct ccp_list_entry* FUNC4 (struct ccp_list_entry*,struct ccp_list_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccp_list_entry*,int,int,int /*<<< orphan*/ ) ; 
 struct ccp_list_entry* FUNC6 (int) ; 
 int* FUNC7 (int) ; 
 struct ccp_list_entry* FUNC8 (struct ccp_list_entry*,int) ; 

int* FUNC9 (int *freq, int N, int L, int *alphabet_size) {
  int k;
  FUNC0 (L >= 2);
  int *l = FUNC7 (N * sizeof (int));
  dyn_mark_t E_mark;
  FUNC1 (E_mark);
  struct ccp_list_entry *E = FUNC6 (N * sizeof (struct ccp_list_entry));
  int M = 0;
  for (k = 0; k < N; k++) {
    if (freq[k]) {
      E[M].freq = freq[k];
      E[M].leaf_value = k;
      M++;
    }
  }
  *alphabet_size = M;
  FUNC0 (M > 0);
  FUNC5 (E, M, sizeof (E[0]), cmp_ccp_list_entries);
  if (M == 1) {
    /* only one symbol in alphabet */
    l[E[0].leaf_value] = L; /* mark it */
    FUNC2 (E_mark);
    return l;
  }
  struct ccp_list_entry *x = FUNC8 (E, M);
  for (k = L-1; k >= 1; k--) {
    x = FUNC4 (x, FUNC8 (E, M));
  }
  x = FUNC4 (x, NULL);
  for (k = 1; x != NULL; k++) {
    if (k < M) {
      FUNC3 (l, x);
    }
    x = x->next;
  }
  FUNC2 (E_mark);
  return l;
}