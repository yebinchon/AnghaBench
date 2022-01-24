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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NUM_SOURCE_OPS ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/ * opcodesHash ; 
 void* optable ; 
 TYPE_1__* sourceOps ; 
 void* symtable ; 
 int symtablelen ; 

void FUNC3( void ) {
	int i;

	symtable = FUNC2(symtablelen);
	optable = FUNC2(100);  /* There's hardly 100 opcodes anyway. */

	for ( i = 0 ; i < NUM_SOURCE_OPS ; i++ ) {
		opcodesHash[i] = FUNC0( sourceOps[i].name );
		FUNC1(optable, opcodesHash[i], sourceOps + i);
	}
}