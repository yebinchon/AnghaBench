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
struct intree_node {scalar_t__ right; scalar_t__ left; } ;

/* Variables and functions */
 struct intree_node* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC2 (treespace_t TS, treeref_t T) {
  int res = 0;
  if (T) {
    res++;
    struct intree_node *TC = FUNC0(T);
    res += FUNC2 (TS, TC->left);
    res += FUNC2 (TS, TC->right);
    FUNC1 (TS, T);
  }
  return res;
}