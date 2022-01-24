#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_4__ {int /*<<< orphan*/  eindex; int /*<<< orphan*/  val; } ;
struct TYPE_5__ {void* axis; void* negative; void* enabled; TYPE_1__ opacity; void* opac_type; void* chan; int /*<<< orphan*/  ord; } ;
typedef  TYPE_2__ lwTexture ;

/* Variables and functions */
#define  ID_AXIS 132 
#define  ID_CHAN 131 
#define  ID_ENAB 130 
#define  ID_NEGA 129 
#define  ID_OPAC 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9( picoMemStream_t *fp, int hsz, lwTexture *tex ){
	unsigned int id;
	unsigned short sz;
	int pos, rlen;


	/* remember where we started */

	FUNC8( 0 );
	pos = FUNC1( fp );

	/* ordinal string */

	tex->ord = FUNC3( fp );

	/* first subchunk header */

	id = FUNC5( fp );
	sz = FUNC4( fp );
	if ( 0 > FUNC7() ) {
		return 0;
	}

	/* process subchunks as they're encountered */

	while ( 1 ) {
		sz += sz & 1;
		FUNC8( 0 );

		switch ( id ) {
		case ID_CHAN:
			tex->chan = FUNC5( fp );
			break;

		case ID_OPAC:
			tex->opac_type = FUNC4( fp );
			tex->opacity.val = FUNC2( fp );
			tex->opacity.eindex = FUNC6( fp );
			break;

		case ID_ENAB:
			tex->enabled = FUNC4( fp );
			break;

		case ID_NEGA:
			tex->negative = FUNC4( fp );
			break;

		case ID_AXIS:
			tex->axis = FUNC4( fp );
			break;

		default:
			break;
		}

		/* error while reading current subchunk? */

		rlen = FUNC7();
		if ( rlen < 0 || rlen > sz ) {
			return 0;
		}

		/* skip unread parts of the current subchunk */

		if ( rlen < sz ) {
			FUNC0( fp, sz - rlen, PICO_SEEK_CUR );
		}

		/* end of the texture header subchunk? */

		if ( hsz <= FUNC1( fp ) - pos ) {
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