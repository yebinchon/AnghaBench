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
struct TYPE_7__ {TYPE_2__* backarea; TYPE_2__* frontarea; int /*<<< orphan*/  winding; struct TYPE_7__** next; } ;
typedef  TYPE_1__ tmp_face_t ;
struct TYPE_8__ {TYPE_1__* tmpfaces; struct TYPE_8__* l_next; } ;
typedef  TYPE_2__ tmp_area_t ;
struct TYPE_9__ {TYPE_2__* areas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__ tmpaasworld ; 

void FUNC4(void)
{
	int side, num;
	tmp_face_t *face, *nextface;
	tmp_area_t *tmparea;

	//FIXME: loop over the faces instead of area->faces
	FUNC2("AAS_RemoveTinyFaces\r\n");
	num = 0;
	for (tmparea = tmpaasworld.areas; tmparea; tmparea = tmparea->l_next)
	{
		for (face = tmparea->tmpfaces; face; face = nextface)
		{
			side = face->frontarea != tmparea;
			nextface = face->next[side];
			//
			if (FUNC3(face->winding) < 1)
			{
				if (face->frontarea) FUNC1(face, face->frontarea);
				if (face->backarea) FUNC1(face, face->backarea);
				FUNC0(face);
				//Log_Write("area %d face %d is tiny\r\n", tmparea->areanum, face->num);
				num++;
			} //end if
		} //end for
	} //end for
	FUNC2("%d tiny faces removed\r\n", num);
}