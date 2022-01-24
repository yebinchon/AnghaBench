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
typedef  int /*<<< orphan*/  ppc_instruction_t ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/ * code; int /*<<< orphan*/ * jump; } ;
typedef  TYPE_1__ dest_instruction_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned long) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void
FUNC3(
		unsigned long int i_count,
		size_t num_instructions,
		const ppc_instruction_t *is
	)
{
	if ( num_instructions < 0 )
		num_instructions = 0;
	size_t iBytes = sizeof( ppc_instruction_t ) * num_instructions;
	dest_instruction_t *di_now = FUNC1( sizeof( dest_instruction_t ) + iBytes );

	di_now->length = num_instructions;
	di_now->jump = NULL;

	if ( iBytes > 0 )
		FUNC2( &(di_now->code[0]), is, iBytes );

	FUNC0( di_now, i_count );
}