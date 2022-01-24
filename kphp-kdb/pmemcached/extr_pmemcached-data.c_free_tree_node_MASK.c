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
typedef  int /*<<< orphan*/  tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  alloc_tree_nodes ; 
 int entry_memory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1 (tree_t *T) {
  FUNC0 (T, sizeof (tree_t));
  alloc_tree_nodes--;
  entry_memory -= sizeof (tree_t);
}