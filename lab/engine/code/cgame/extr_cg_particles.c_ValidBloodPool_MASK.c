#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_3__ {scalar_t__ entityNum; int fraction; int /*<<< orphan*/  startsolid; } ;
typedef  TYPE_1__ trace_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 scalar_t__ ENTITYNUM_WORLD ; 
 int EXTRUDE_DIST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

qboolean FUNC5 (vec3_t start)
{
#define EXTRUDE_DIST	0.5

	vec3_t	angles;
	vec3_t	right, up;
	vec3_t	this_pos, x_pos, center_pos, end_pos;
	int		x, y;
	int		fwidth, fheight;
	trace_t	trace;
	vec3_t	normal;

	fwidth = 16;
	fheight = 16;

	FUNC3 (normal, 0, 0, 1);

	FUNC4 (normal, angles);
	FUNC0 (angles, NULL, right, up);

	FUNC2 (start, EXTRUDE_DIST, normal, center_pos);

	for (x= -fwidth/2; x<fwidth; x+= fwidth)
	{
		FUNC2 (center_pos, x, right, x_pos);

		for (y= -fheight/2; y<fheight; y+= fheight)
		{
			FUNC2 (x_pos, y, up, this_pos);
			FUNC2 (this_pos, -EXTRUDE_DIST*2, normal, end_pos);
			
			FUNC1 (&trace, this_pos, NULL, NULL, end_pos, -1, CONTENTS_SOLID);

			
			if (trace.entityNum < ENTITYNUM_WORLD) // may only land on world
				return qfalse;

			if (!(!trace.startsolid && trace.fraction < 1))
				return qfalse;
		
		}
	}

	return qtrue;
}