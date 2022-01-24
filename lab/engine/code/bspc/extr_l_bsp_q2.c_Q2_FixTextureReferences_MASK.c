#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
struct TYPE_11__ {int planenum; int /*<<< orphan*/  texinfo; } ;
typedef  TYPE_1__ dface_t ;
struct TYPE_12__ {int planenum; int /*<<< orphan*/  texinfo; } ;
typedef  TYPE_2__ dbrushside_t ;
struct TYPE_13__ {int numsides; int firstside; } ;
typedef  TYPE_3__ dbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_MAP_BRUSHSIDES ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int WE_NOTENOUGHPOINTS ; 
 int WE_POINTBOGUSRANGE ; 
 int WE_SMALLAREA ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int* brushsidetextured ; 
 TYPE_3__* dbrushes ; 
 TYPE_2__* dbrushsides ; 
 TYPE_1__* dfaces ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int /*<<< orphan*/ ) ; 
 int numbrushes ; 
 int numfaces ; 

void FUNC8(void)
{
	int i, j, k, we;
	dbrushside_t *brushside;
	dbrush_t *brush;
	dface_t *face;
	winding_t *w;

	FUNC7(brushsidetextured, false, MAX_MAP_BRUSHSIDES);
	//go over all the brushes
   for (i = 0; i < numbrushes; i++)
   {
		brush = &dbrushes[i];
		//hint brushes are not textured
		if (FUNC3(brush)) continue;
		//go over all the sides of the brush
		for (j = 0; j < brush->numsides; j++)
		{
			brushside = &dbrushsides[brush->firstside + j];
			//
			w = FUNC1(brush, brushside);
			if (!w)
			{
				brushsidetextured[brush->firstside + j] = true;
				continue;
			} //end if
			else
			{
				//RemoveEqualPoints(w, 0.2);
				if (FUNC6(w))
				{
					FUNC0(w);
					brushsidetextured[brush->firstside + j] = true;
					continue;
				} //end if
				else
				{
					we = FUNC5(w);
					if (we == WE_NOTENOUGHPOINTS
						|| we == WE_SMALLAREA
						|| we == WE_POINTBOGUSRANGE
//						|| we == WE_NONCONVEX
						)
					{
						FUNC0(w);
						brushsidetextured[brush->firstside + j] = true;
						continue;
					} //end if
				} //end else
			} //end else
			if (FUNC4(w) < 20)
			{
				brushsidetextured[brush->firstside + j] = true;
			} //end if
			//find a face for texturing this brush
			for (k = 0; k < numfaces; k++)
			{
				face = &dfaces[k];
				//if the face is in the same plane as the brush side
				if ((face->planenum&~1) != (brushside->planenum&~1)) continue;
				//if the face is partly or totally on the brush side
				if (FUNC2(face, w))
				{
					brushside->texinfo = face->texinfo;
					brushsidetextured[brush->firstside + j] = true;
					break;
				} //end if
			} //end for
			FUNC0(w);
		} //end for
	} //end for
}