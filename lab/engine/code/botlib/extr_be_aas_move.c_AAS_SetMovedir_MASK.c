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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MOVEDIR_DOWN ; 
 int /*<<< orphan*/  MOVEDIR_UP ; 
 int /*<<< orphan*/  VEC_DOWN ; 
 int /*<<< orphan*/  VEC_UP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(vec3_t angles, vec3_t movedir)
{
	if (FUNC1(angles, VEC_UP))
	{
		FUNC2(MOVEDIR_UP, movedir);
	} //end if
	else if (FUNC1(angles, VEC_DOWN))
	{
		FUNC2(MOVEDIR_DOWN, movedir);
	} //end else if
	else
	{
		FUNC0(angles, movedir, NULL, NULL);
	} //end else
}