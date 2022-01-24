#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_7__ {int faceflags; int /*<<< orphan*/  winding; TYPE_2__* frontarea; struct TYPE_7__** next; } ;
typedef  TYPE_1__ tmp_face_t ;
struct TYPE_8__ {int /*<<< orphan*/  areanum; TYPE_1__* tmpfaces; } ;
typedef  TYPE_2__ tmp_area_t ;
struct TYPE_9__ {int /*<<< orphan*/ * phys_gravitydirection; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,float,int*,int*,int*) ; 
 int FACE_GROUND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__ cfg ; 

int FUNC8(tmp_area_t *tmparea, vec3_t normal, float *dist)
{
	int side1, side2;
	int foundsplitter, facesplits, groundsplits, epsilonfaces, bestepsilonfaces;
	float bestvalue, value;
	tmp_face_t *face1, *face2;
	vec3_t tmpnormal, invgravity;
	float tmpdist;

	//get inverse of gravity direction
	FUNC5(cfg.phys_gravitydirection, invgravity);
	FUNC6(invgravity);

	foundsplitter = false;
	bestvalue = -999999;
	bestepsilonfaces = 0;
	//
#ifdef AW_DEBUG
	Log_Print("finding split plane for area %d\n", tmparea->areanum);
#endif //AW_DEBUG
	for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
	{
		//side of the face the area is on
		side1 = face1->frontarea != tmparea;
		//
		if (FUNC7(face1->winding))
		{
			FUNC4("gsubdiv: area %d has a tiny winding\r\n", tmparea->areanum);
			continue;
		} //end if
		//if the face isn't a gap or ground there's no split edge
		if (!(face1->faceflags & FACE_GROUND) && !FUNC0(face1, side1)) continue;
		//
		for (face2 = face1->next[side1]; face2; face2 = face2->next[side2])
		{
			//side of the face the area is on
			side2 = face2->frontarea != tmparea;
			//
			if (FUNC7(face1->winding))
			{
				FUNC4("gsubdiv: area %d has a tiny winding\r\n", tmparea->areanum);
				continue;
			} //end if
			//if the face isn't a gap or ground there's no split edge
			if (!(face2->faceflags & FACE_GROUND) && !FUNC0(face2, side2)) continue;
			//only split between gaps and ground
			if (!(((face1->faceflags & FACE_GROUND) && FUNC0(face2, side2)) ||
					((face2->faceflags & FACE_GROUND) && FUNC0(face1, side1)))) continue;
			//find a plane seperating the windings of the faces
			if (!FUNC2(face1->winding, face2->winding, invgravity,
														tmpnormal, &tmpdist)) continue;
#ifdef AW_DEBUG
			Log_Print("normal = \'%f %f %f\', dist = %f\n",
							tmpnormal[0], tmpnormal[1], tmpnormal[2], tmpdist);
#endif //AW_DEBUG
			//get metrics for this vertical plane
			if (!FUNC1(tmparea, tmpnormal, tmpdist,
										&facesplits, &groundsplits, &epsilonfaces))
			{
				continue;
			} //end if
#ifdef AW_DEBUG
			Log_Print("face splits = %d\nground splits = %d\n",
							facesplits, groundsplits);
#endif //AW_DEBUG
			value = 100 - facesplits - 2 * groundsplits;
			//avoid epsilon faces
			value += epsilonfaces * -1000;
			if (value > bestvalue)
			{
				FUNC5(tmpnormal, normal);
				*dist = tmpdist;
				bestvalue = value;
				bestepsilonfaces = epsilonfaces;
				foundsplitter = true;
			} //end if
		} //end for
	} //end for
	if (bestepsilonfaces)
	{
		FUNC4("found %d epsilon faces trying to split area %d\r\n",
									epsilonfaces, tmparea->areanum);
	} //end else
	return foundsplitter;
}