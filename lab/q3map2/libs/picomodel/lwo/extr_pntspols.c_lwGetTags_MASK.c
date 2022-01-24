#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_3__ {int offset; int count; int /*<<< orphan*/ * tag; } ;
typedef  TYPE_1__ lwTagList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int FUNC6 (char*) ; 

int FUNC7( picoMemStream_t *fp, int cksize, lwTagList *tlist ){
	char *buf, *bp;
	int i, len, ntags;

	if ( cksize == 0 ) {
		return 1;
	}

	/* read the whole chunk */

	FUNC4( 0 );
	buf = FUNC2( fp, cksize );
	if ( !buf ) {
		return 0;
	}

	/* count the strings */

	ntags = 0;
	bp = buf;
	while ( bp < buf + cksize ) {
		len = FUNC6( bp ) + 1;
		len += len & 1;
		bp += len;
		++ntags;
	}

	/* expand the string array to hold the new tags */

	tlist->offset = tlist->count;
	tlist->count += ntags;
	if ( !FUNC1( (void *) &tlist->tag, ( tlist->count - ntags ) * sizeof( char * ), tlist->count * sizeof( char * ) ) ) {
		goto Fail;
	}
	FUNC3( &tlist->tag[ tlist->offset ], 0, ntags * sizeof( char * ) );

	/* copy the new tags to the tag array */

	bp = buf;
	for ( i = 0; i < ntags; i++ )
		tlist->tag[ i + tlist->offset ] = FUNC5( &bp );

	FUNC0( buf );
	return 1;

Fail:
	if ( buf ) {
		FUNC0( buf );
	}
	return 0;
}