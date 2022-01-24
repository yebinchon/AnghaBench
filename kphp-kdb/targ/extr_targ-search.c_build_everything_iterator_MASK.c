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
struct iterator {int pos; int /*<<< orphan*/  (* jump_to ) (struct iterator*,int /*<<< orphan*/ ) ;} ;
typedef  struct iterator* iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iterator*,int /*<<< orphan*/ ) ; 
 struct iterator* FUNC1 (int) ; 

iterator_t FUNC2 (void) {
  struct iterator *I = FUNC1 (sizeof (struct iterator));
  I->jump_to = everything_iterator_jump_to;
  I->pos = -1;
  FUNC0 (I, 0);
  return I;
}