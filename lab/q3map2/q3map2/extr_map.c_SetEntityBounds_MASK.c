#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_10__ {int width; int height; TYPE_1__* verts; } ;
struct TYPE_11__ {int /*<<< orphan*/  eMaxs; int /*<<< orphan*/  eMins; struct TYPE_11__* next; TYPE_2__ mesh; } ;
typedef  TYPE_3__ parseMesh_t ;
struct TYPE_12__ {TYPE_3__* patches; TYPE_5__* brushes; } ;
typedef  TYPE_4__ entity_t ;
struct TYPE_13__ {int /*<<< orphan*/  eMaxs; int /*<<< orphan*/  eMins; struct TYPE_13__* next; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_5__ brush_t ;
struct TYPE_9__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5( entity_t *e ){
	int i;
	brush_t *b;
	parseMesh_t *p;
	vec3_t mins, maxs;
	const char  *value;




	/* walk the entity's brushes/patches and determine bounds */
	FUNC1( mins, maxs );
	for ( b = e->brushes; b; b = b->next )
	{
		FUNC0( b->mins, mins, maxs );
		FUNC0( b->maxs, mins, maxs );
	}
	for ( p = e->patches; p; p = p->next )
	{
		for ( i = 0; i < ( p->mesh.width * p->mesh.height ); i++ )
			FUNC0( p->mesh.verts[ i ].xyz, mins, maxs );
	}

	/* try to find explicit min/max key */
	value = FUNC3( e, "min" );
	if ( value[ 0 ] != '\0' ) {
		FUNC2( e, "min", mins );
	}
	value = FUNC3( e, "max" );
	if ( value[ 0 ] != '\0' ) {
		FUNC2( e, "max", maxs );
	}

	/* store the bounds */
	for ( b = e->brushes; b; b = b->next )
	{
		FUNC4( mins, b->eMins );
		FUNC4( maxs, b->eMaxs );
	}
	for ( p = e->patches; p; p = p->next )
	{
		FUNC4( mins, p->eMins );
		FUNC4( maxs, p->eMaxs );
	}
}