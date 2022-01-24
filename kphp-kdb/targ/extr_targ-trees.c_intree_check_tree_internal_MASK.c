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
struct intree_node {int x; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;

/* Variables and functions */
 struct intree_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2 (treespace_t TS, treeref_t T, int a, int b) {
  if (!T) {
    return 0;
  }
  struct intree_node *TC = FUNC0 (T);
  FUNC1 (TC->x >= a && TC->x <= b);
  return FUNC2 (TS, TC->left, a, TC->x - 1) + FUNC2 (TS, TC->right, TC->x + 1, b) + 1;
}