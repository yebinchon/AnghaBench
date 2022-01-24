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
typedef  int /*<<< orphan*/  entityState_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 

int FUNC3( int clientNum, int sequence, entityState_t *state ) {
	int		entNum;

	entNum = FUNC2( clientNum, sequence );
	if ( entNum == -1 ) {
		FUNC1(state, 0, sizeof(entityState_t));
		return -1;
	}

	FUNC0( entNum, state );

	return sequence + 1;
}