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
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 float FUNC0 (float,float) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(vec3_t origin1, float radius1, vec3_t origin2, float radius2, vec3_t origin3, float *radius3)
{
	vec3_t diff;

	FUNC3(origin1, 0.5f, origin3);
	FUNC2(origin3, 0.5f, origin2, origin3);

	FUNC4(origin1, origin2, diff);
	*radius3 = FUNC1(diff) * 0.5f + FUNC0(radius1, radius2);
}