#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_10__ {void* eindex; void** val; } ;
struct TYPE_9__ {void* eindex; void** val; } ;
struct TYPE_8__ {void* eindex; void** val; } ;
struct TYPE_7__ {void* eindex; void** val; } ;
struct TYPE_11__ {void* coord_sys; int /*<<< orphan*/  ref_object; TYPE_4__ falloff; void* fall_type; TYPE_3__ rotate; TYPE_2__ center; TYPE_1__ size; } ;
typedef  TYPE_5__ lwTMap ;

/* Variables and functions */
#define  ID_CNTR 133 
#define  ID_CSYS 132 
#define  ID_FALL 131 
#define  ID_OREF 130 
#define  ID_ROTA 129 
#define  ID_SIZE 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9( picoMemStream_t *fp, int tmapsz, lwTMap *tmap ){
	unsigned int id;
	unsigned short sz;
	int rlen, pos, i;

	pos = FUNC1( fp );
	id = FUNC5( fp );
	sz = FUNC4( fp );
	if ( 0 > FUNC7() ) {
		return 0;
	}

	while ( 1 ) {
		sz += sz & 1;
		FUNC8( 0 );

		switch ( id ) {
		case ID_SIZE:
			for ( i = 0; i < 3; i++ )
				tmap->size.val[ i ] = FUNC2( fp );
			tmap->size.eindex = FUNC6( fp );
			break;

		case ID_CNTR:
			for ( i = 0; i < 3; i++ )
				tmap->center.val[ i ] = FUNC2( fp );
			tmap->center.eindex = FUNC6( fp );
			break;

		case ID_ROTA:
			for ( i = 0; i < 3; i++ )
				tmap->rotate.val[ i ] = FUNC2( fp );
			tmap->rotate.eindex = FUNC6( fp );
			break;

		case ID_FALL:
			tmap->fall_type = FUNC4( fp );
			for ( i = 0; i < 3; i++ )
				tmap->falloff.val[ i ] = FUNC2( fp );
			tmap->falloff.eindex = FUNC6( fp );
			break;

		case ID_OREF:
			tmap->ref_object = FUNC3( fp );
			break;

		case ID_CSYS:
			tmap->coord_sys = FUNC4( fp );
			break;

		default:
			break;
		}

		/* error while reading the current subchunk? */

		rlen = FUNC7();
		if ( rlen < 0 || rlen > sz ) {
			return 0;
		}

		/* skip unread parts of the current subchunk */

		if ( rlen < sz ) {
			FUNC0( fp, sz - rlen, PICO_SEEK_CUR );
		}

		/* end of the TMAP subchunk? */

		if ( tmapsz <= FUNC1( fp ) - pos ) {
			break;
		}

		/* get the next subchunk header */

		FUNC8( 0 );
		id = FUNC5( fp );
		sz = FUNC4( fp );
		if ( 6 != FUNC7() ) {
			return 0;
		}
	}

	FUNC8( FUNC1( fp ) - pos );
	return 1;
}