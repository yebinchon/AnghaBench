#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ op; int /*<<< orphan*/  head; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef  TYPE_1__ query_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ qn_and ; 
 scalar_t__ qn_cum_and ; 
 scalar_t__ qn_cum_or ; 
 scalar_t__ qn_or ; 

__attribute__((used)) static void FUNC2 (query_node_t *X) {
  if (!X) { return; }
  query_node_t *Y = X->left, *Z = X->right;
  FUNC2 (Y);
  FUNC2 (Z);
  if (X->op == qn_and || X->op == qn_or) {
    X->op = (X->op == qn_and) ? qn_cum_and : qn_cum_or;
    if (Y->op == X->op) {
      if (Z->op == X->op) {
        //merge list(Y) and list(Z)
        FUNC0 (Y->head, Z->head);
        X->head = Y->head;
      } else {
        FUNC0 (Y->head, FUNC1 (Z));
        X->head = Y->head;
      }
    } else {
      if (Z->op == X->op) {
        FUNC0 (Z->head, FUNC1 (Y));
        X->head = Z->head;
      } else {
        X->head = FUNC1 (Y);
        FUNC0 (X->head, FUNC1 (Z));
      }
    }
  }
}