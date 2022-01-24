#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  online_tree; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_8__ {int x; struct TYPE_8__* left; } ;
typedef  TYPE_2__ stree_t ;

/* Variables and functions */
 int FRIEND_MULT_INV ; 
 TYPE_2__* FreedNodes ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ hold_online_time ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static void FUNC3 (user_t *U) {
  stree_t *T;
  FreedNodes = 0;
  U->online_tree = FUNC1 (U->online_tree, now - hold_online_time);
  while (FreedNodes) {
    T = FreedNodes;
    FreedNodes = T->left;
    /* send offline notification to U->user_id about T->x */
    FUNC2 (U, -FRIEND_MULT_INV * T->x, 1, 9);
    FUNC0 (T);
  }
}