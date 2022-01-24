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
typedef  double* vec3_t ;
typedef  int /*<<< orphan*/  clipHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double*,double*) ; 
 float FUNC2 (double*,double*) ; 
 int /*<<< orphan*/  FUNC3 (double*) ; 
 int /*<<< orphan*/  FUNC4 (double*,double*) ; 

void FUNC5(int modelnum, vec3_t angles, vec3_t outmins, vec3_t outmaxs, vec3_t origin)
{
	clipHandle_t h;
	vec3_t mins, maxs;
	float max;
	int	i;

	h = FUNC0(modelnum);
	FUNC1(h, mins, maxs);
	//if the model is rotated
	if ((angles[0] || angles[1] || angles[2]))
	{	// expand for rotation

		max = FUNC2(mins, maxs);
		for (i = 0; i < 3; i++)
		{
			mins[i] = (mins[i] + maxs[i]) * 0.5 - max;
			maxs[i] = (mins[i] + maxs[i]) * 0.5 + max;
		} //end for
	} //end if
	if (outmins) FUNC4(mins, outmins);
	if (outmaxs) FUNC4(maxs, outmaxs);
	if (origin) FUNC3(origin);
}