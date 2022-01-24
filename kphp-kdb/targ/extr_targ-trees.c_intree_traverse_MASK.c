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
typedef  int (* intree_traverse_func_t ) (struct intree_node*) ;

/* Variables and functions */
 struct intree_node* FUNC0 (scalar_t__) ; 

int FUNC1 (treespace_t TS, treeref_t T, intree_traverse_func_t traverse_node) {
  if (T) {
    struct intree_node *TC = FUNC0(T);
    return FUNC1 (TS, TC->left, traverse_node) + traverse_node (TC) + FUNC1 (TS, TC->right, traverse_node);
  } else {
    return 0;
  }
}