#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; scalar_t__ type; struct TYPE_9__* last; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef  TYPE_1__ query_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ q_and ; 
 scalar_t__ q_or ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

query_t *FUNC4 (int quantifier, query_t *Q) {
  if ((Q->flags & 1) || !FUNC0 (Q)) {
    return 0;
  }
  if (Q->type == q_and || Q->type == q_or) {
    query_t *A = FUNC4 (quantifier, Q->left);
    query_t *B = FUNC4 (quantifier, Q->right);
    if (!A) {
      return B;
    }
    if (!B) {
      return A;
    }
    query_t *C = FUNC2 (Q->type, 0);
    C->left = A;
    C->right = B;
    FUNC3 (C);
    if (B->type == Q->type && !(B->flags & 1)) {
      C->last = B->last;
    } else {
      C->last = C;
    }
    return C;
  }
  return FUNC1 (quantifier, Q);
}