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
typedef  int /*<<< orphan*/  treeref_t ;
struct intree_node {int /*<<< orphan*/  right; int /*<<< orphan*/  x; int /*<<< orphan*/  left; } ;

/* Variables and functions */
 struct intree_node* FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1 (treespace_t TS, treeref_t T, int *A) {
  int t;
  if (!T) { return 0; }
  struct intree_node *TC = FUNC0 (T);
  A += t = FUNC1 (TS, TC->left, A);
  *A++ = TC->x;
  return t + 1 + FUNC1 (TS, TC->right, A);
}