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
struct TYPE_5__ {scalar_t__ x; int delta; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef  TYPE_1__ tree_ext_global_t ;
typedef  scalar_t__ global_id_t ;

/* Variables and functions */
 TYPE_1__* NILG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline tree_ext_global_t *FUNC1 (tree_ext_global_t *T, global_id_t x, int delta_incr) {
  while (T != NILG && x != T->x) {
    T->delta += delta_incr;
    T = (x < T->x) ? T->left : T->right;
  }
  FUNC0 (T != NILG);
  T->delta += delta_incr;
  return T;
}