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
typedef  int /*<<< orphan*/ * vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(vec3_t point, /*const*/ vec3_t matrix[3]) { // FIXME 
	vec3_t tvec;

	FUNC1(point, tvec);
	point[0] = FUNC0(matrix[0], tvec);
	point[1] = FUNC0(matrix[1], tvec);
	point[2] = FUNC0(matrix[2], tvec);
}