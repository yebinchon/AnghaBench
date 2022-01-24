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
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_7__ {int offset; } ;
typedef  TYPE_2__ lwTagList ;
typedef  int /*<<< orphan*/  lwSurface ;
struct TYPE_8__ {int offset; TYPE_1__* pol; } ;
typedef  TYPE_3__ lwPolygonList ;
struct TYPE_6__ {int part; int smoothgrp; int /*<<< orphan*/ * surf; } ;

/* Variables and functions */
#define  ID_PART 130 
#define  ID_SMGP 129 
#define  ID_SURF 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5( picoMemStream_t *fp, int cksize, lwTagList *tlist,
					  lwPolygonList *plist ){
	unsigned int type;
	int rlen = 0, i, j;

	FUNC4( 0 );
	type = FUNC1( fp );
	rlen = FUNC3();
	if ( rlen < 0 ) {
		return 0;
	}

	if ( type != ID_SURF && type != ID_PART && type != ID_SMGP ) {
		FUNC0( fp, cksize - 4, PICO_SEEK_CUR );
		return 1;
	}

	while ( rlen < cksize ) {
		i = FUNC2( fp ) + plist->offset;
		j = FUNC2( fp ) + tlist->offset;
		rlen = FUNC3();
		if ( rlen < 0 || rlen > cksize ) {
			return 0;
		}

		switch ( type ) {
		case ID_SURF:  plist->pol[ i ].surf = ( lwSurface * ) ( (size_t)j );  break;
		case ID_PART:  plist->pol[ i ].part = j;  break;
		case ID_SMGP:  plist->pol[ i ].smoothgrp = j;  break;
		}
	}

	return 1;
}