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
struct TYPE_5__ {long long x; int y; int z; scalar_t__ right; scalar_t__ left; } ;
typedef  TYPE_1__ ltree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  tree_nodes ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static inline ltree_t *FUNC2 (long long x, int y, int z) {
  ltree_t *P;
  P = FUNC1 (sizeof (ltree_t));
  FUNC0 (P);
  P->left = P->right = 0;
  P->x = x;
  P->y = y;
  P->z = z;
  ++tree_nodes;
  return P;
}