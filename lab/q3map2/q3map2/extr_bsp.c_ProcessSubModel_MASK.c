#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {TYPE_2__* headnode; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_29__ {TYPE_4__* brushlist; int /*<<< orphan*/  planenum; } ;
typedef  TYPE_2__ node_t ;
struct TYPE_30__ {TYPE_4__* brushes; int /*<<< orphan*/  numBrushes; int /*<<< orphan*/  firstBrush; int /*<<< orphan*/  firstDrawSurf; } ;
typedef  TYPE_3__ entity_t ;
struct TYPE_31__ {struct TYPE_31__* next; } ;
typedef  TYPE_4__ brush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_2__* FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_4__* FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  PLANENUM_LEAF ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_3__* entities ; 
 size_t mapEntityNum ; 
 int /*<<< orphan*/  nosubdivide ; 
 int /*<<< orphan*/  notjunc ; 
 int /*<<< orphan*/  numMapDrawSurfs ; 

void FUNC22( void ){
	entity_t    *e;
	tree_t      *tree;
	brush_t     *b, *bc;
	node_t      *node;


	/* start a brush model */
	FUNC4();
	e = &entities[ mapEntityNum ];
	e->firstDrawSurf = numMapDrawSurfs;

	/* ydnar: gs mods */
	FUNC6();

	/* check for patches with adjacent edges that need to lod together */
	FUNC19( e );

	/* allocate a tree */
	node = FUNC2();
	node->planenum = PLANENUM_LEAF;
	tree = FUNC3();
	tree->headnode = node;

	/* add the sides to the tree */
	FUNC7( e, tree );

	/* ydnar: create drawsurfs for triangle models */
	FUNC1( e );

	/* create drawsurfs for surface models */
	FUNC0( e );

	/* generate bsp brushes from map brushes */
	FUNC9( e->brushes, &e->firstBrush, &e->numBrushes );

	/* just put all the brushes in headnode */
	for ( b = e->brushes; b; b = b->next )
	{
		bc = FUNC8( b );
		bc->next = node->brushlist;
		node->brushlist = bc;
	}

	/* subdivide each drawsurf as required by shader tesselation */
	if ( !nosubdivide ) {
		FUNC21( e, tree );
	}

	/* add in any vertexes required to fix t-junctions */
	if ( !notjunc ) {
		FUNC14( e );
	}

	/* ydnar: classify the surfaces and project lightmaps */
	FUNC5( e );

	/* ydnar: project decals */
	FUNC16( e );

	/* ydnar: meta surfaces */
	FUNC17( e );
	FUNC20();
	FUNC13();
	FUNC18();

	/* add references to the final drawsurfs in the apropriate clusters */
	FUNC11( e, tree );

	/* match drawsurfaces back to original brushsides (sof2) */
	FUNC12( e );

	/* finish */
	FUNC10( e, node );
	FUNC15( tree );
}