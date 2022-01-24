#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  name; void** value; void* axis; } ;
struct TYPE_6__ {TYPE_1__ proc; } ;
struct TYPE_7__ {TYPE_2__ param; int /*<<< orphan*/  tmap; } ;
typedef  TYPE_3__ lwTexture ;

/* Variables and functions */
#define  ID_AXIS 131 
#define  ID_FUNC 130 
#define  ID_TMAP 129 
#define  ID_VALU 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10( picoMemStream_t *fp, int rsz, lwTexture *tex ){
	unsigned int id;
	unsigned short sz;
	int rlen, pos;

	pos = FUNC1( fp );
	id = FUNC5( fp );
	sz = FUNC4( fp );
	if ( 0 > FUNC6() ) {
		return 0;
	}

	while ( 1 ) {
		sz += sz & 1;
		FUNC9( 0 );

		switch ( id ) {
		case ID_TMAP:
			if ( !FUNC8( fp, sz, &tex->tmap ) ) {
				return 0;
			}
			break;

		case ID_AXIS:
			tex->param.proc.axis = FUNC4( fp );
			break;

		case ID_VALU:
			tex->param.proc.value[ 0 ] = FUNC2( fp );
			if ( sz >= 8 ) {
				tex->param.proc.value[ 1 ] = FUNC2( fp );
			}
			if ( sz >= 12 ) {
				tex->param.proc.value[ 2 ] = FUNC2( fp );
			}
			break;

		case ID_FUNC:
			tex->param.proc.name = FUNC3( fp );
			rlen = FUNC6();
			tex->param.proc.data = FUNC7( fp, sz - rlen );
			break;

		default:
			break;
		}

		/* error while reading the current subchunk? */

		rlen = FUNC6();
		if ( rlen < 0 || rlen > sz ) {
			return 0;
		}

		/* skip unread parts of the current subchunk */

		if ( rlen < sz ) {
			FUNC0( fp, sz - rlen, PICO_SEEK_CUR );
		}

		/* end of the procedural block? */

		if ( rsz <= FUNC1( fp ) - pos ) {
			break;
		}

		/* get the next subchunk header */

		FUNC9( 0 );
		id = FUNC5( fp );
		sz = FUNC4( fp );
		if ( 6 != FUNC6() ) {
			return 0;
		}
	}

	FUNC9( FUNC1( fp ) - pos );
	return 1;
}