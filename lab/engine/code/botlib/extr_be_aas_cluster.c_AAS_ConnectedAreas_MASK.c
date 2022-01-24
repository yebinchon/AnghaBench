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
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  connectedareas ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int MAX_PORTALAREAS ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC2(int *areanums, int numareas)
{
	int connectedareas[MAX_PORTALAREAS], i;

	FUNC1(connectedareas, 0, sizeof(connectedareas));
	if (numareas < 1) return qfalse;
	if (numareas == 1) return qtrue;
	FUNC0(areanums, numareas, connectedareas, 0);
	for (i = 0; i < numareas; i++)
	{
		if (!connectedareas[i]) return qfalse;
	} //end for
	return qtrue;
}