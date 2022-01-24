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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*,int*,int*,int**,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 float FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*) ; 

int FUNC6(vec3_t origin)
{
	int firstareanum, j, x, y, z;
	int areas[10], numareas, areanum, bestareanum;
	float dist, bestdist;
	vec3_t points[10], v, end;

	firstareanum = 0;
	areanum = FUNC1(origin);
	if (areanum)
	{
		firstareanum = areanum;
		if (FUNC0(areanum)) return areanum;
	} //end if
	FUNC3(origin, end);
	end[2] += 4;
	numareas = FUNC2(origin, end, areas, points, 10);
	for (j = 0; j < numareas; j++)
	{
		if (FUNC0(areas[j])) return areas[j];
	} //end for
	bestdist = 999999;
	bestareanum = 0;
	for (z = 1; z >= -1; z -= 1)
	{
		for (x = 1; x >= -1; x -= 1)
		{
			for (y = 1; y >= -1; y -= 1)
			{
				FUNC3(origin, end);
				end[0] += x * 8;
				end[1] += y * 8;
				end[2] += z * 12;
				numareas = FUNC2(origin, end, areas, points, 10);
				for (j = 0; j < numareas; j++)
				{
					if (FUNC0(areas[j]))
					{
						FUNC5(points[j], origin, v);
						dist = FUNC4(v);
						if (dist < bestdist)
						{
							bestareanum = areas[j];
							bestdist = dist;
						} //end if
					} //end if
					if (!firstareanum) firstareanum = areas[j];
				} //end for
			} //end for
		} //end for
		if (bestareanum) return bestareanum;
	} //end for
	return firstareanum;
}