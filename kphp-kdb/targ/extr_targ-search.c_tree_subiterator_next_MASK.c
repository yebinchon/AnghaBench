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
typedef  scalar_t__ treeref_t ;
struct tree_subiterator {long sp; int pos; int /*<<< orphan*/  mult; scalar_t__* S; } ;
struct intree_node {int x; int /*<<< orphan*/  z; scalar_t__ left; scalar_t__ right; } ;

/* Variables and functions */
 int INFTY ; 
 long MAX_DEPTH ; 
 struct intree_node* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  WordSpace ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2 (struct tree_subiterator *TI) {
  FUNC1 (TI->sp > 0);
  long i = TI->sp;
  treespace_t TS = WordSpace;
  treeref_t T = TI->S[--i];
  struct intree_node *TC = FUNC0 (T);
  T = TC->right;
  while (T) {
    TC = FUNC0 (T);
    TI->S[i++] = T;
    T = TC->left;
  }
  FUNC1 (i <= MAX_DEPTH);
  TI->sp = i;
  if (!i) {
    return TI->pos = INFTY;
  }
  TC = FUNC0 (TI->S[i - 1]);
  TI->mult = TC->z;
  return TI->pos = TC->x;
}