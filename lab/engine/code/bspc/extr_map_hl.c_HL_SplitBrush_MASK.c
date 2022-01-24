#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int vec_t ;
struct TYPE_28__ {int planenum; int surf; TYPE_1__* winding; int /*<<< orphan*/  flags; scalar_t__ texinfo; } ;
typedef  TYPE_2__ side_t ;
struct TYPE_29__ {float dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_3__ plane_t ;
struct TYPE_30__ {int numsides; int* mins; int* maxs; TYPE_2__* sides; int /*<<< orphan*/  original; } ;
typedef  TYPE_4__ bspbrush_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,TYPE_1__**,TYPE_1__**) ; 
 TYPE_4__* FUNC7 (TYPE_4__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 float FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int PSIDE_BACK ; 
 int PSIDE_FRONT ; 
 int /*<<< orphan*/  SFL_TESTED ; 
 int /*<<< orphan*/  SFL_VISIBLE ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 TYPE_3__* mapplanes ; 

void FUNC15(bspbrush_t *brush, int planenum, int nodenum,
						 bspbrush_t **front, bspbrush_t **back)
{
	bspbrush_t *b[2];
	int i, j;
	winding_t *w, *cw[2], *midwinding;
	plane_t *plane, *plane2;
	side_t *s, *cs;
	float d, d_front, d_back;

	*front = *back = NULL;
	plane = &mapplanes[planenum];

	// check all points
	d_front = d_back = 0;
	for (i=0 ; i<brush->numsides ; i++)
	{
		w = brush->sides[i].winding;
		if (!w)
			continue;
		for (j=0 ; j<w->numpoints ; j++)
		{
			d = FUNC9 (w->p[j], plane->normal) - plane->dist;
			if (d > 0 && d > d_front)
				d_front = d;
			if (d < 0 && d < d_back)
				d_back = d;
		} //end for
	} //end for

	if (d_front < 0.1) // PLANESIDE_EPSILON)
	{	// only on back
		*back = FUNC7 (brush);
		FUNC12("HL_SplitBrush: only on back\n");
		return;
	} //end if
	if (d_back > -0.1) // PLANESIDE_EPSILON)
	{	// only on front
		*front = FUNC7 (brush);
		FUNC12("HL_SplitBrush: only on front\n");
		return;
	} //end if

	// create a new winding from the split plane

	w = FUNC1 (plane->normal, plane->dist);
	for (i = 0; i < brush->numsides && w; i++)
	{
		plane2 = &mapplanes[brush->sides[i].planenum ^ 1];
		FUNC5(&w, plane2->normal, plane2->dist, 0); // PLANESIDE_EPSILON);
	} //end for

	if (!w || FUNC14(w))
	{	// the brush isn't really split
		int		side;

		FUNC12("HL_SplitBrush: no split winding\n");
		side = FUNC3 (brush, plane);
		if (side == PSIDE_FRONT)
			*front = FUNC7 (brush);
		if (side == PSIDE_BACK)
			*back = FUNC7 (brush);
		return;
	}

	if (FUNC13(w))
	{
		FUNC12("HL_SplitBrush: WARNING huge split winding\n");
	} //end of

	midwinding = w;

	// split it for real

	for (i = 0; i < 2; i++)
	{
		b[i] = FUNC0 (brush->numsides+1);
		b[i]->original = brush->original;
	} //end for

	// split all the current windings

	for (i=0 ; i<brush->numsides ; i++)
	{
		s = &brush->sides[i];
		w = s->winding;
		if (!w)
			continue;
		FUNC6 (w, plane->normal, plane->dist,
			0 /*PLANESIDE_EPSILON*/, &cw[0], &cw[1]);
		for (j=0 ; j<2 ; j++)
		{
			if (!cw[j])
				continue;
#if 0
			if (WindingIsTiny (cw[j]))
			{
				FreeWinding (cw[j]);
				continue;
			}
#endif
			cs = &b[j]->sides[b[j]->numsides];
			b[j]->numsides++;
			*cs = *s;
//			cs->planenum = s->planenum;
//			cs->texinfo = s->texinfo;
//			cs->visible = s->visible;
//			cs->original = s->original;
			cs->winding = cw[j];
			cs->flags &= ~SFL_TESTED;
		} //end for
	} //end for


	// see if we have valid polygons on both sides

	for (i=0 ; i<2 ; i++)
	{
		FUNC2 (b[i]);
		for (j=0 ; j<3 ; j++)
		{
			if (b[i]->mins[j] < -4096 || b[i]->maxs[j] > 4096)
			{
				FUNC12("HL_SplitBrush: bogus brush after clip\n");
				break;
			} //end if
		} //end for

		if (b[i]->numsides < 3 || j < 3)
		{
			FUNC10 (b[i]);
			b[i] = NULL;
			FUNC12("HL_SplitBrush: numsides < 3\n");
		} //end if
	} //end for

	if ( !(b[0] && b[1]) )
	{
		if (!b[0] && !b[1])
			FUNC12("HL_SplitBrush: split removed brush\n");
		else
			FUNC12("HL_SplitBrush: split not on both sides\n");
		if (b[0])
		{
			FUNC10 (b[0]);
			*front = FUNC7 (brush);
		} //end if
		if (b[1])
		{
			FUNC10 (b[1]);
			*back = FUNC7 (brush);
		} //end if
		return;
	} //end if

	// add the midwinding to both sides
	for (i = 0; i < 2; i++)
	{
		cs = &b[i]->sides[b[i]->numsides];
		b[i]->numsides++;

		cs->planenum = planenum^i^1;
		cs->texinfo = 0;
		//store the node number in the surf to find the texinfo later on
		cs->surf = nodenum;
		//
		cs->flags &= ~SFL_VISIBLE;
		cs->flags &= ~SFL_TESTED;
		if (i==0)
			cs->winding = FUNC8 (midwinding);
		else
			cs->winding = midwinding;
	} //end for


{
	vec_t v1;
	int i;

	for (i=0 ; i<2 ; i++)
	{
		v1 = FUNC4 (b[i]);
		if (v1 < 1)
		{
			FUNC10 (b[i]);
			b[i] = NULL;
			FUNC12("HL_SplitBrush: tiny volume after clip\n");
		} //end if
	} //end for
} //*/

	*front = b[0];
	*back = b[1];
}