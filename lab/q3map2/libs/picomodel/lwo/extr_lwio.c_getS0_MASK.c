#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;

/* Variables and functions */
 scalar_t__ FLEN_ERROR ; 
 int /*<<< orphan*/  PICO_SEEK_SET ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ flen ; 

char *FUNC5( picoMemStream_t *fp ){
	char *s;
	int i, c, len, pos;

	if ( flen == FLEN_ERROR ) {
		return NULL;
	}

	pos = FUNC4( fp );
	for ( i = 1; ; i++ ) {
		c = FUNC1( fp );
		if ( c <= 0 ) {
			break;
		}
	}
	if ( c < 0 ) {
		flen = FLEN_ERROR;
		return NULL;
	}

	if ( i == 1 ) {
		if ( FUNC3( fp, pos + 2, PICO_SEEK_SET ) ) {
			flen = FLEN_ERROR;
		}
		else{
			flen += 2;
		}
		return NULL;
	}

	len = i + ( i & 1 );
	s = FUNC0( len );
	if ( !s ) {
		flen = FLEN_ERROR;
		return NULL;
	}

	if ( FUNC3( fp, pos, PICO_SEEK_SET ) ) {
		flen = FLEN_ERROR;
		return NULL;
	}
	if ( 1 != FUNC2( fp, s, len ) ) {
		flen = FLEN_ERROR;
		return NULL;
	}

	flen += len;
	return s;
}