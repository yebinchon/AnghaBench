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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int NUM_ID_PAKS ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

qboolean FUNC2(char *pak, char *base, int numPaks)
{
	int i;

	for (i = 0; i < NUM_ID_PAKS; i++) {
		if ( !FUNC0(pak, FUNC1("%s/pak%d", base, i)) ) {
			break;
		}
	}
	if (i < numPaks) {
		return qtrue;
	}
	return qfalse;
}