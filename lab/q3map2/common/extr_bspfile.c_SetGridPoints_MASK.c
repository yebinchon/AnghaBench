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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ gridData ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int numGridPoints ; 
 scalar_t__ FUNC2 (int,char*) ; 

void FUNC3( int n ){
	if ( gridData != 0 ) {
		FUNC0( gridData );
	}

	numGridPoints = n;

	if ( n == 0 ) {
		return;
	}

	gridData = FUNC2( numGridPoints * 8, "SetGridPoints" );

	FUNC1( gridData, 0, numGridPoints * 8 );
}