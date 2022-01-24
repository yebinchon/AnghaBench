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

/* Variables and functions */
 scalar_t__ FLEN_ERROR ; 
 char* FUNC0 (int) ; 
 scalar_t__ flen ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*,int) ; 
 int FUNC2 (char*) ; 

char *FUNC3( unsigned char **bp ){
	char *s;
	unsigned char *buf = *bp;
	int len;

	if ( flen == FLEN_ERROR ) {
		return NULL;
	}

	len = FUNC2( (char *) buf ) + 1;
	if ( len == 1 ) {
		flen += 2;
		*bp += 2;
		return NULL;
	}
	len += len & 1;
	s = FUNC0( len );
	if ( !s ) {
		flen = FLEN_ERROR;
		return NULL;
	}

	FUNC1( s, buf, len );
	flen += len;
	*bp += len;
	return s;
}