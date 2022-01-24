#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__* script ; 
 int scriptline ; 

qboolean FUNC2( void ) {
	int oldLine, oldScriptLine;
	qboolean r;

	/* save */
	oldLine = scriptline;
	oldScriptLine = script->line;

	/* test */
	r = FUNC0( qtrue );
	if ( !r ) {
		return qfalse;
	}
	FUNC1();
	if ( oldLine == scriptline ) {
		return qtrue;
	}

	/* restore */
	//%	scriptline = oldLine;
	//%	script->line = oldScriptLine;

	return qfalse;
}