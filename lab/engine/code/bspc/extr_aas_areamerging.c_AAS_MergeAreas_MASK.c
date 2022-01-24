#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* frontarea; TYPE_2__* backarea; struct TYPE_6__** next; } ;
typedef  TYPE_1__ tmp_face_t ;
struct TYPE_7__ {TYPE_1__* tmpfaces; scalar_t__ invalid; struct TYPE_7__* l_next; } ;
typedef  TYPE_2__ tmp_area_t ;
struct TYPE_8__ {int /*<<< orphan*/  nodes; TYPE_2__* areas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_3__ tmpaasworld ; 

void FUNC5(void)
{
	int side, nummerges, merges, groundfirst;
	tmp_area_t *tmparea, *othertmparea;
	tmp_face_t *face;

	nummerges = 0;
	FUNC3("AAS_MergeAreas\r\n");
	FUNC4("%6d areas merged", 1);
	//
	groundfirst = true;
	//for (i = 0; i < 4 || merges; i++)
	while(1)
	{
		//if (i < 2) groundfirst = true;
		//else groundfirst = false;
		//
		merges = 0;
		//first merge grounded areas only
		for (tmparea = tmpaasworld.areas; tmparea; tmparea = tmparea->l_next)
		{
			//if the area is invalid
			if (tmparea->invalid)
			{
				continue;
			} //end if
			//
			if (groundfirst)
			{
				if (!FUNC0(tmparea)) continue;
			} //end if
			//
			for (face = tmparea->tmpfaces; face; face = face->next[side])
			{
				side = (face->frontarea != tmparea);
				//if the face has both a front and back area
				if (face->frontarea && face->backarea)
				{
					//
					if (face->frontarea == tmparea) othertmparea = face->backarea;
					else othertmparea = face->frontarea;
					//
					if (groundfirst)
					{
						if (!FUNC0(othertmparea)) continue;
					} //end if
					if (FUNC2(face))
					{
						FUNC4("\r%6d", ++nummerges);
						merges++;
						break;
					} //end if
				} //end if
			} //end for
		} //end for
		if (!merges)
		{
			if (groundfirst) groundfirst = false;
			else break;
		} //end if
	} //end for
	FUNC4("\n");
	FUNC3("%6d areas merged\r\n", nummerges);
	//refresh the merged tree
	FUNC1(tmpaasworld.nodes);
}