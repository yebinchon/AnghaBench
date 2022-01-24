#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ltree_x_t ;
struct TYPE_5__ {int y; int /*<<< orphan*/  x; scalar_t__ right; scalar_t__ left; } ;
typedef  TYPE_1__ ltree_t ;

/* Variables and functions */
 int /*<<< orphan*/  alloc_ltree_nodes ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ltree_node_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  object_list_bytes ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ltree_t *FUNC3 (ltree_x_t x, int y) {
  ltree_t *P = FUNC2 (ltree_node_size);
  FUNC0 (P);
  alloc_ltree_nodes++;
  P->left = P->right = 0;
  P->y = y;
  #ifndef LISTS_Z
  P->x = x;
  #else
  memcpy (P->x, x, object_list_bytes);
  #endif
  return P;
}