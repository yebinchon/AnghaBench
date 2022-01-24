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
struct intree_node {int x; int z; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;

/* Variables and functions */
 struct intree_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

inline treeref_t FUNC5 (treespace_t TS, treeref_t T, int x, int dz, int *nodes_num) {
  treeref_t Q = T, *QP = &Q;
  if (!dz) {
    return T;
  }
  while (T) {
    struct intree_node *TC = FUNC0(T);
    if (x == TC->x) {
      break;
    }
    if (x < TC->x) {
      QP = &TC->left;
      T = TC->left;
    } else {
      QP = &TC->right;
      T = TC->right;
    }
  }
  if (T) {
    struct intree_node *TC = FUNC0(T);
    TC->z += dz;
    if (!TC->z) {
      *QP = FUNC3 (TS, TC->left, TC->right);
      FUNC1 (TS, T);
      --*nodes_num;
    }
    return Q;
  } 

  T = FUNC4 (TS);
  struct intree_node *TC = FUNC0(T);
  TC->x = x;
  TC->z = dz;
  ++*nodes_num;
  return FUNC2 (TS, Q, T);
}