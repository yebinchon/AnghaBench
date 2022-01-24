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
typedef  int* vec3_t ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int CONTENTS_LAVA ; 
 int CONTENTS_SLIME ; 
 int CONTENTS_WATER ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(vec3_t origin)
{
	vec3_t testorg;

	FUNC1(origin, testorg);
	testorg[2] -= 2;
	if (FUNC0(testorg) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER)) return qtrue;
	return qfalse;
}