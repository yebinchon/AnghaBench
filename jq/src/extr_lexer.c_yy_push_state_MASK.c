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
typedef  scalar_t__ yyscan_t ;
typedef  int yy_size_t ;
struct yyguts_t {scalar_t__ yy_start_stack_ptr; scalar_t__ yy_start_stack_depth; int* yy_start_stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int YY_START ; 
 scalar_t__ YY_START_STACK_INCR ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 scalar_t__ FUNC3 (void*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4 (int  _new_state , yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;
	if ( yyg->yy_start_stack_ptr >= yyg->yy_start_stack_depth )
		{
		yy_size_t new_size;

		yyg->yy_start_stack_depth += YY_START_STACK_INCR;
		new_size = (yy_size_t) yyg->yy_start_stack_depth * sizeof( int );

		if ( ! yyg->yy_start_stack )
			yyg->yy_start_stack = (int *) FUNC2( new_size , yyscanner );

		else
			yyg->yy_start_stack = (int *) FUNC3(
					(void *) yyg->yy_start_stack, new_size , yyscanner );

		if ( ! yyg->yy_start_stack )
			FUNC1( "out of memory expanding start-condition stack" );
		}

	yyg->yy_start_stack[yyg->yy_start_stack_ptr++] = YY_START;

	FUNC0(_new_state);
}