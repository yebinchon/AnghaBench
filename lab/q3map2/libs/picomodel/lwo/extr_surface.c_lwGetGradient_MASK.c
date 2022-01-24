#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_7__ {void** ikey; TYPE_1__* key; void* repeat; void* end; void* start; void* itemname; void* paramname; } ;
struct TYPE_8__ {TYPE_2__ grad; } ;
struct TYPE_9__ {TYPE_3__ param; int /*<<< orphan*/  tmap; } ;
typedef  TYPE_4__ lwTexture ;
typedef  int /*<<< orphan*/  lwGradKey ;
struct TYPE_6__ {void** rgba; void* value; } ;

/* Variables and functions */
#define  ID_FKEY 135 
#define  ID_GREN 134 
#define  ID_GRPT 133 
#define  ID_GRST 132 
#define  ID_IKEY 131 
#define  ID_INAM 130 
#define  ID_PNAM 129 
#define  ID_TMAP 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10( picoMemStream_t *fp, int rsz, lwTexture *tex ){
	unsigned int id;
	unsigned short sz;
	int rlen, pos, i, j, nkeys;

	pos = FUNC2( fp );
	id = FUNC6( fp );
	sz = FUNC5( fp );
	if ( 0 > FUNC7() ) {
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

		case ID_PNAM:
			tex->param.grad.paramname = FUNC4( fp );
			break;

		case ID_INAM:
			tex->param.grad.itemname = FUNC4( fp );
			break;

		case ID_GRST:
			tex->param.grad.start = FUNC3( fp );
			break;

		case ID_GREN:
			tex->param.grad.end = FUNC3( fp );
			break;

		case ID_GRPT:
			tex->param.grad.repeat = FUNC5( fp );
			break;

		case ID_FKEY:
			nkeys = sz / sizeof( lwGradKey );
			tex->param.grad.key = FUNC0( nkeys, sizeof( lwGradKey ) );
			if ( !tex->param.grad.key ) {
				return 0;
			}
			for ( i = 0; i < nkeys; i++ ) {
				tex->param.grad.key[ i ].value = FUNC3( fp );
				for ( j = 0; j < 4; j++ )
					tex->param.grad.key[ i ].rgba[ j ] = FUNC3( fp );
			}
			break;

		case ID_IKEY:
			nkeys = sz / 2;
			tex->param.grad.ikey = FUNC0( nkeys, sizeof( short ) );
			if ( !tex->param.grad.ikey ) {
				return 0;
			}
			for ( i = 0; i < nkeys; i++ )
				tex->param.grad.ikey[ i ] = FUNC5( fp );
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
			FUNC1( fp, sz - rlen, PICO_SEEK_CUR );
		}

		/* end of the gradient? */

		if ( rsz <= FUNC2( fp ) - pos ) {
			break;
		}

		/* get the next subchunk header */

		FUNC9( 0 );
		id = FUNC6( fp );
		sz = FUNC5( fp );
		if ( 6 != FUNC7() ) {
			return 0;
		}
	}

	FUNC9( FUNC2( fp ) - pos );
	return 1;
}