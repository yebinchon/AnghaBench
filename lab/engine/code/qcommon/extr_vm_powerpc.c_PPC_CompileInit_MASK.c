#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolic_jump_t ;
typedef  int /*<<< orphan*/  local_data_t ;
typedef  int /*<<< orphan*/  dest_instruction_t ;
struct TYPE_8__ {int /*<<< orphan*/ * next; scalar_t__ count; } ;
struct TYPE_7__ {int /*<<< orphan*/ * jump; int /*<<< orphan*/ * next; scalar_t__ count; } ;
struct TYPE_6__ {int /*<<< orphan*/ * nextJump; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE_ICOUNT ; 
 int GPRLEN ; 
 void* FUNC0 (int) ; 
 long STACK_LR ; 
 int STACK_SAVE ; 
 TYPE_5__* data_first ; 
 TYPE_3__* di_first ; 
 TYPE_3__* di_last ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iADDI ; 
 int /*<<< orphan*/  iBL ; 
 int /*<<< orphan*/  iBLR ; 
 int /*<<< orphan*/  iLL ; 
 int /*<<< orphan*/  iMFLR ; 
 int /*<<< orphan*/  iMR ; 
 int /*<<< orphan*/  iMTLR ; 
 int /*<<< orphan*/  iSTL ; 
 int /*<<< orphan*/  iSTLU ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  r0 ; 
 int /*<<< orphan*/  r1 ; 
 int /*<<< orphan*/  r3 ; 
 int /*<<< orphan*/  r4 ; 
 int /*<<< orphan*/  r5 ; 
 int /*<<< orphan*/  rDATABASE ; 
 int /*<<< orphan*/  rPSTACK ; 
 int /*<<< orphan*/  rVMDATA ; 
 TYPE_1__* sj_first ; 
 TYPE_1__* sj_last ; 

__attribute__((used)) static void
FUNC4( void )
{
	di_first = di_last = FUNC0( sizeof( dest_instruction_t ) );
	di_first->count = 0;
	di_first->next = NULL;
	di_first->jump = NULL;

	sj_first = sj_last = FUNC0( sizeof( symbolic_jump_t ) );
	sj_first->nextJump = NULL;

	data_first = FUNC0( sizeof( local_data_t ) );
	data_first->count = 0;
	data_first->next = NULL;

	/*
	 * init function:
	 * saves old values of global registers and sets our values
	 * function prototype is:
	 *  int begin( void *data, int programStack, void *vm->dataBase )
	 */

	/* first instruction must not be placed on instruction list */
	FUNC2( FALSE_ICOUNT );

	long int stack = STACK_SAVE + 4 * GPRLEN;

	FUNC3( iMFLR, r0 );
	FUNC3( iSTLU, r1, -stack, r1 );
	FUNC3( iSTL, rVMDATA, STACK_SAVE + 0 * GPRLEN, r1 );
	FUNC3( iSTL, rPSTACK, STACK_SAVE + 1 * GPRLEN, r1 );
	FUNC3( iSTL, rDATABASE, STACK_SAVE + 2 * GPRLEN, r1 );
	FUNC3( iSTL, r0, stack + STACK_LR, r1 );
	FUNC3( iMR, rVMDATA, r3 );
	FUNC3( iMR, rPSTACK, r4 );
	FUNC3( iMR, rDATABASE, r5 );
	FUNC3( iBL, +4*8 ); // LINK JUMP: first generated instruction | XXX jump !
	FUNC3( iLL, rVMDATA, STACK_SAVE + 0 * GPRLEN, r1 );
	FUNC3( iLL, rPSTACK, STACK_SAVE + 1 * GPRLEN, r1 );
	FUNC3( iLL, rDATABASE, STACK_SAVE + 2 * GPRLEN, r1 );
	FUNC3( iLL, r0, stack + STACK_LR, r1 );
	FUNC3( iMTLR, r0 );
	FUNC3( iADDI, r1, r1, stack );
	FUNC3( iBLR );

	FUNC1();
}