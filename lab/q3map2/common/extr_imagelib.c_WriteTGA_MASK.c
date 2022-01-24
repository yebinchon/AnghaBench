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
typedef  int byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int* FUNC5 (int) ; 

void FUNC6( const char *filename, byte *data, int width, int height ) {
	byte    *buffer;
	int i;
	int c;
	FILE    *f;

	buffer = FUNC5( width * height * 4 + 18 );
	FUNC4( buffer, 0, 18 );
	buffer[2] = 2;      // uncompressed type
	buffer[12] = width & 255;
	buffer[13] = width >> 8;
	buffer[14] = height & 255;
	buffer[15] = height >> 8;
	buffer[16] = 32;    // pixel size

	// swap rgb to bgr
	c = 18 + width * height * 4;
	for ( i = 18 ; i < c ; i += 4 )
	{
		buffer[i] = data[i - 18 + 2];       // blue
		buffer[i + 1] = data[i - 18 + 1];     // green
		buffer[i + 2] = data[i - 18 + 0];     // red
		buffer[i + 3] = data[i - 18 + 3];     // alpha
	}

	f = FUNC1( filename, "wb" );
	FUNC3( buffer, 1, c, f );
	FUNC0( f );

	FUNC2( buffer );
}