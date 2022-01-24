#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ traceNode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ GROW_TRACE_NODES ; 
 int /*<<< orphan*/  TRACE_LEAF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int maxTraceNodes ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int numTraceNodes ; 
 TYPE_1__* FUNC4 (int) ; 
 TYPE_1__* traceNodes ; 

__attribute__((used)) static int FUNC5( void ){
	traceNode_t *temp;


	/* enough space? */
	if ( numTraceNodes >= maxTraceNodes ) {
		/* reallocate more room */
		maxTraceNodes += GROW_TRACE_NODES;
		temp = FUNC4( maxTraceNodes * sizeof( traceNode_t ) );
		if ( traceNodes != NULL ) {
			FUNC2( temp, traceNodes, numTraceNodes * sizeof( traceNode_t ) );
			FUNC1( traceNodes );
		}
		traceNodes = temp;
	}

	/* add the node */
	FUNC3( &traceNodes[ numTraceNodes ], 0, sizeof( traceNode_t ) );
	traceNodes[ numTraceNodes ].type = TRACE_LEAF;
	FUNC0( traceNodes[ numTraceNodes ].mins, traceNodes[ numTraceNodes ].maxs );
	numTraceNodes++;

	/* return the count */
	return ( numTraceNodes - 1 );
}