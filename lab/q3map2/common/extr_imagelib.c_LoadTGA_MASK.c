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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,int*) ; 
 int FUNC2 (char*,void**,int /*<<< orphan*/ ) ; 

void FUNC3( const char *name, byte **pixels, int *width, int *height ){
	byte            *buffer;
	int nLen;
	//
	// load the file
	//
	nLen = FUNC2( ( char * ) name, (void **)&buffer, 0 );
	if ( nLen == -1 ) {
		FUNC0( "Couldn't read %s", name );
	}

	FUNC1( buffer, buffer + nLen, pixels, width, height );

}