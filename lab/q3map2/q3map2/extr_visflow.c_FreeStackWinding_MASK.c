#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* freewindings; int /*<<< orphan*/ * windings; } ;
typedef  TYPE_1__ pstack_t ;
typedef  int /*<<< orphan*/  fixedWinding_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1( fixedWinding_t *w, pstack_t *stack ){
	int i;

	for (i = 0; i < sizeof(stack->windings) / sizeof(stack->windings[0]); i++) {
		if (w == &stack->windings[i]) {
			if ( stack->freewindings[i] ) {
				FUNC0( "FreeStackWinding: already free" );
			}
			stack->freewindings[i] = 1;
			break;
		}
	}
}