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
struct TYPE_5__ {int count; TYPE_4__* pt; } ;
typedef  TYPE_1__ lwPointList ;
struct TYPE_6__ {struct TYPE_6__* vm; struct TYPE_6__* pol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2( lwPointList *point ){
	int i;

	if ( point ) {
		if ( point->pt ) {
			for ( i = 0; i < point->count; i++ ) {
				if ( point->pt[ i ].pol ) {
					FUNC0( point->pt[ i ].pol );
				}
				if ( point->pt[ i ].vm ) {
					FUNC0( point->pt[ i ].vm );
				}
			}
			FUNC0( point->pt );
		}
		FUNC1( point, 0, sizeof( lwPointList ) );
	}
}