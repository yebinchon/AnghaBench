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
struct binary_operation_iterator {int pos; void* B; void* A; int /*<<< orphan*/  (* jump_to ) (void*,int /*<<< orphan*/ ) ;} ;
typedef  void* iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 struct binary_operation_iterator* FUNC1 (int) ; 

iterator_t FUNC2 (iterator_t A, iterator_t B) {
  struct binary_operation_iterator *I = FUNC1 (sizeof (struct binary_operation_iterator));
  I->jump_to = binary_subtraction_iterator_jump_to;
  I->pos = -1;
  I->A = A;
  I->B = B;
  FUNC0 ((iterator_t) I, 0);
  return (iterator_t) I;
}