#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct binary_operation_iterator {int pos; int /*<<< orphan*/  jump_to; TYPE_1__* B; TYPE_2__* A; } ;
typedef  scalar_t__ iterator_t ;
struct TYPE_6__ {int pos; int (* jump_to ) (TYPE_2__*,int) ;} ;
struct TYPE_5__ {int pos; int (* jump_to ) (TYPE_1__*,int) ;} ;

/* Variables and functions */
 int INFTY ; 
 int /*<<< orphan*/  dummy_iterator_jump_to ; 
 int /*<<< orphan*/  empty_iterator_jump_to ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 

int FUNC4 (iterator_t I, int req_pos) {
  struct binary_operation_iterator *X = (struct binary_operation_iterator *) I;
  int a = X->A->pos;
  int b = X->B->pos;
  if (a < req_pos) {
    a = X->A->jump_to (X->A, req_pos);
  }
  if (b < a) {
    b = X->B->jump_to (X->B, a);
  }
  while (a == b) {
    if (a == INFTY) {
      X->jump_to = empty_iterator_jump_to;
      return X->pos = a;
    }
    a = X->A->jump_to (X->A, a + 1);
    b = X->B->jump_to (X->B, a);
  }
  if (b == INFTY) {
    X->jump_to = dummy_iterator_jump_to;
  }
  return X->pos = a;
}