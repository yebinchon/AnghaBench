#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_5__ {int /*<<< orphan*/  data; void* name; void* flags; void* ord; } ;
typedef  TYPE_1__ lwPlugin ;

/* Variables and functions */
 unsigned int ID_ENAB ; 
#define  ID_FUNC 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

lwPlugin *FUNC10( picoMemStream_t *fp, int bloksz ){
	lwPlugin *shdr;
	unsigned int id;
	unsigned short sz;
	int hsz, rlen, pos;

	shdr = FUNC0( 1, sizeof( lwPlugin ) );
	if ( !shdr ) {
		return NULL;
	}

	pos = FUNC2( fp );
	FUNC9( 0 );
	hsz = FUNC4( fp );
	shdr->ord = FUNC3( fp );
	id = FUNC5( fp );
	sz = FUNC4( fp );
	if ( 0 > FUNC6() ) {
		goto Fail;
	}

	while ( hsz > 0 ) {
		sz += sz & 1;
		hsz -= sz;
		if ( id == ID_ENAB ) {
			shdr->flags = FUNC4( fp );
			break;
		}
		else {
			FUNC1( fp, sz, PICO_SEEK_CUR );
			id = FUNC5( fp );
			sz = FUNC4( fp );
		}
	}

	id = FUNC5( fp );
	sz = FUNC4( fp );
	if ( 0 > FUNC6() ) {
		goto Fail;
	}

	while ( 1 ) {
		sz += sz & 1;
		FUNC9( 0 );

		switch ( id ) {
		case ID_FUNC:
			shdr->name = FUNC3( fp );
			rlen = FUNC6();
			shdr->data = FUNC7( fp, sz - rlen );
			break;

		default:
			break;
		}

		/* error while reading the current subchunk? */

		rlen = FUNC6();
		if ( rlen < 0 || rlen > sz ) {
			goto Fail;
		}

		/* skip unread parts of the current subchunk */

		if ( rlen < sz ) {
			FUNC1( fp, sz - rlen, PICO_SEEK_CUR );
		}

		/* end of the shader block? */

		if ( bloksz <= FUNC2( fp ) - pos ) {
			break;
		}

		/* get the next subchunk header */

		FUNC9( 0 );
		id = FUNC5( fp );
		sz = FUNC4( fp );
		if ( 6 != FUNC6() ) {
			goto Fail;
		}
	}

	FUNC9( FUNC2( fp ) - pos );
	return shdr;

Fail:
	FUNC8( shdr );
	return NULL;
}