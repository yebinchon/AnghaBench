#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; TYPE_4__* pol; } ;
typedef  TYPE_1__ lwPolygonList ;
struct TYPE_6__ {int nverts; struct TYPE_6__* v; struct TYPE_6__* vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2( lwPolygonList *plist ){
	int i, j;

	if ( plist ) {
		if ( plist->pol ) {
			for ( i = 0; i < plist->count; i++ ) {
				if ( plist->pol[ i ].v ) {
					for ( j = 0; j < plist->pol[ i ].nverts; j++ )
						if ( plist->pol[ i ].v[ j ].vm ) {
							FUNC0( plist->pol[ i ].v[ j ].vm );
						}
				}
			}
			if ( plist->pol[ 0 ].v ) {
				FUNC0( plist->pol[ 0 ].v );
			}
			FUNC0( plist->pol );
		}
		FUNC1( plist, 0, sizeof( lwPolygonList ) );
	}
}