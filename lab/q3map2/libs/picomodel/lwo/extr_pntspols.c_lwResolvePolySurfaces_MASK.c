#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int count; int /*<<< orphan*/ * tag; } ;
typedef  TYPE_2__ lwTagList ;
struct TYPE_14__ {int /*<<< orphan*/  name; struct TYPE_14__* next; } ;
typedef  TYPE_3__ lwSurface ;
struct TYPE_15__ {int count; TYPE_1__* pol; } ;
typedef  TYPE_4__ lwPolygonList ;
struct TYPE_12__ {TYPE_3__* surf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_3__** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void**,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8( lwPolygonList *polygon, lwTagList *tlist,
						   lwSurface **surf, int *nsurfs ){
	lwSurface **s, *st;
	int i, index;

	if ( tlist->count == 0 ) {
		return 1;
	}

	s = FUNC1( tlist->count, sizeof( lwSurface * ) );
	if ( !s ) {
		return 0;
	}

	for ( i = 0; i < tlist->count; i++ ) {
		st = *surf;
		while ( st ) {
			if ( !FUNC5( st->name, tlist->tag[ i ] ) ) {
				s[ i ] = st;
				break;
			}
			st = st->next;
		}
	}

	for ( i = 0; i < polygon->count; i++ ) {
		index = ( int ) ( (size_t)polygon->pol[ i ].surf );
		if ( index < 0 || index > tlist->count ) {
			return 0;
		}
		if ( !s[ index ] ) {
			s[ index ] = FUNC3();
			if ( !s[ index ] ) {
				return 0;
			}
			s[ index ]->name = FUNC0( FUNC7( tlist->tag[ index ] ) + 1 );
			if ( !s[ index ]->name ) {
				return 0;
			}
			FUNC6( s[ index ]->name, tlist->tag[ index ] );
			FUNC4( (void **) surf, s[ index ] );
			*nsurfs = *nsurfs + 1;
		}
		polygon->pol[ i ].surf = s[ index ];
	}

	FUNC2( s );
	return 1;
}