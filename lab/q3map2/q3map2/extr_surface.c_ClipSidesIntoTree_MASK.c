#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
struct TYPE_14__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_15__ {int planenum; int /*<<< orphan*/ * visibleHull; int /*<<< orphan*/ * winding; TYPE_3__* shaderInfo; } ;
typedef  TYPE_2__ side_t ;
struct TYPE_16__ {int compileFlags; scalar_t__ indexed; scalar_t__ noClip; scalar_t__ autosprite; } ;
typedef  TYPE_3__ shaderInfo_t ;
struct TYPE_17__ {TYPE_5__* brushes; } ;
typedef  TYPE_4__ entity_t ;
struct TYPE_18__ {int numsides; TYPE_2__* sides; struct TYPE_18__* next; } ;
typedef  TYPE_5__ brush_t ;

/* Variables and functions */
 int C_FOG ; 
 int C_NODRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_5__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ qfalse ; 
 TYPE_2__* FUNC6 (int) ; 

void FUNC7( entity_t *e, tree_t *tree ){
	brush_t     *b;
	int i;
	winding_t       *w;
	side_t          *side, *newSide;
	shaderInfo_t    *si;


	/* ydnar: cull brush sides */
	FUNC2( e );

	/* note it */
	FUNC5( SYS_VRB, "--- ClipSidesIntoTree ---\n" );

	/* walk the brush list */
	for ( b = e->brushes; b; b = b->next )
	{
		/* walk the brush sides */
		for ( i = 0; i < b->numsides; i++ )
		{
			/* get side */
			side = &b->sides[ i ];
			if ( side->winding == NULL ) {
				continue;
			}

			/* copy the winding */
			w = FUNC1( side->winding );
			side->visibleHull = NULL;
			FUNC0( w, side, tree->headnode );

			/* anything left? */
			w = side->visibleHull;
			if ( w == NULL ) {
				continue;
			}

			/* shader? */
			si = side->shaderInfo;
			if ( si == NULL ) {
				continue;
			}

			/* don't create faces for non-visible sides */
			/* ydnar: except indexed shaders, like common/terrain and nodraw fog surfaces */
			if ( ( si->compileFlags & C_NODRAW ) && si->indexed == qfalse && !( si->compileFlags & C_FOG ) ) {
				continue;
			}

			/* always use the original winding for autosprites and noclip faces */
			if ( si->autosprite || si->noClip ) {
				w = side->winding;
			}

			/* save this winding as a visible surface */
			FUNC3( e, b, side, w );

			/* make a back side for fog */
			if ( !( si->compileFlags & C_FOG ) ) {
				continue;
			}

			/* duplicate the up-facing side */
			w = FUNC4( w );
			newSide = FUNC6( sizeof( *side ) );
			*newSide = *side;
			newSide->visibleHull = w;
			newSide->planenum ^= 1;

			/* save this winding as a visible surface */
			FUNC3( e, b, newSide, w );
		}
	}
}