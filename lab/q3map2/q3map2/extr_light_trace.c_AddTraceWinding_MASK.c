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
typedef  void traceWinding_t ;

/* Variables and functions */
 scalar_t__ GROW_TRACE_WINDINGS ; 
 int deadWinding ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int maxTraceWindings ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int numTraceWindings ; 
 void* FUNC2 (int) ; 
 void* traceWindings ; 

__attribute__((used)) static int FUNC3( traceWinding_t *tw ){
	int num;
	void    *temp;


	/* check for a dead winding */
	if ( deadWinding >= 0 && deadWinding < numTraceWindings ) {
		num = deadWinding;
	}
	else
	{
		/* put winding at the end of the list */
		num = numTraceWindings;

		/* enough space? */
		if ( numTraceWindings >= maxTraceWindings ) {
			/* allocate more room */
			maxTraceWindings += GROW_TRACE_WINDINGS;
			temp = FUNC2( maxTraceWindings * sizeof( *traceWindings ) );
			if ( traceWindings != NULL ) {
				FUNC1( temp, traceWindings, numTraceWindings * sizeof( *traceWindings ) );
				FUNC0( traceWindings );
			}
			traceWindings = (traceWinding_t*) temp;
		}
	}

	/* add the winding */
	FUNC1( &traceWindings[ num ], tw, sizeof( *traceWindings ) );
	if ( num == numTraceWindings ) {
		numTraceWindings++;
	}
	deadWinding = -1;

	/* return the winding number */
	return num;
}