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
struct condition_iterator {int pos; int /*<<< orphan*/  (* jump_to ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  Cond; } ;
typedef  int /*<<< orphan*/  iterator_t ;
typedef  int /*<<< orphan*/  condition_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct condition_iterator* FUNC1 (int) ; 

iterator_t FUNC2 (condition_t Cond) {
  struct condition_iterator *I = FUNC1 (sizeof (struct condition_iterator));
  I->pos = -1;
  I->Cond = Cond;
  I->jump_to = condition_iterator_jump_to;
  FUNC0 ((iterator_t) I, 0);
  return (iterator_t) I;
}