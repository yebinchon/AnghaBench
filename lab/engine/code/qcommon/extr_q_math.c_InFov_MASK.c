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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float const*,float const*,int /*<<< orphan*/ *) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

qboolean FUNC5(const float start[3], const float end[3], const float angles[3], float fov) {
	vec3_t dir, view_angles;
	float hfov = fov * 0.5;
	FUNC2( end, start, dir );
	FUNC1( angles, dir, qfalse );
	FUNC4( dir, view_angles );
	return FUNC3(FUNC0(view_angles[0])) < hfov &&
				 FUNC3(FUNC0(view_angles[1])) < hfov ? qtrue : qfalse;
}