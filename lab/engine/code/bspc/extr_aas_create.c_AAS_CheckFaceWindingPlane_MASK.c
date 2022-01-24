#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
typedef  scalar_t__* vec3_t ;
struct TYPE_5__ {size_t planenum; int /*<<< orphan*/ * winding; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ tmp_face_t ;
struct TYPE_6__ {scalar_t__* normal; scalar_t__ dist; } ;
typedef  TYPE_2__ plane_t ;

/* Variables and functions */
 float FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,float*) ; 
 double FUNC6 (scalar_t__) ; 
 TYPE_2__* mapplanes ; 

void FUNC7(tmp_face_t *face)
{
	float dist, sign1, sign2;
	vec3_t normal;
	plane_t *plane;
	winding_t *w;

	//check if the winding plane is the same as the face plane
	FUNC5(face->winding, normal, &dist);
	plane = &mapplanes[face->planenum];
	//
	sign1 = FUNC0(plane->normal, normal);
	//
	if (FUNC6(dist - plane->dist) > 0.4 ||
			FUNC6(normal[0] - plane->normal[0]) > 0.0001 ||
			FUNC6(normal[1] - plane->normal[1]) > 0.0001 ||
			FUNC6(normal[2] - plane->normal[2]) > 0.0001)
	{
		FUNC4(normal);
		dist = -dist;
		if (FUNC6(dist - plane->dist) > 0.4 ||
				FUNC6(normal[0] - plane->normal[0]) > 0.0001 ||
				FUNC6(normal[1] - plane->normal[1]) > 0.0001 ||
				FUNC6(normal[2] - plane->normal[2]) > 0.0001)
		{
			FUNC2("AAS_CheckFaceWindingPlane: face %d winding plane unequal to face plane\r\n",
									face->num);
			//
			sign2 = FUNC0(plane->normal, normal);
			if ((sign1 < 0 && sign2 > 0) ||
					(sign1 > 0 && sign2 < 0))
			{
				FUNC2("AAS_CheckFaceWindingPlane: face %d winding reversed\r\n",
									face->num);
				w = face->winding;
				face->winding = FUNC3(w);
				FUNC1(w);
			} //end if
		} //end if
		else
		{
			FUNC2("AAS_CheckFaceWindingPlane: face %d winding reversed\r\n",
									face->num);
			w = face->winding;
			face->winding = FUNC3(w);
			FUNC1(w);
		} //end else
	} //end if
}