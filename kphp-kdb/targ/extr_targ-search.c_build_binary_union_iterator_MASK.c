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
struct binary_operation_iterator {TYPE_1__* B; TYPE_1__* A; int /*<<< orphan*/  pos; int /*<<< orphan*/  jump_to; } ;
typedef  TYPE_1__* iterator_t ;
struct TYPE_5__ {int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  binary_union_iterator_jump_to ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct binary_operation_iterator* FUNC1 (int) ; 

iterator_t FUNC2 (iterator_t A, iterator_t B) {
  struct binary_operation_iterator *I = FUNC1 (sizeof (struct binary_operation_iterator));
  I->jump_to = binary_union_iterator_jump_to;
  I->pos = FUNC0 (A->pos, B->pos);
  I->A = A;
  I->B = B;
  return (iterator_t) I;
}