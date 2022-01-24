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
 unsigned int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 size_t MAX_LOG ; 
 char* consoleLog ; 
 size_t readPos ; 
 unsigned int FUNC3 (char const*) ; 
 unsigned int writePos ; 

unsigned int FUNC4( const char *in )
{
	unsigned int length = FUNC3( in );
	unsigned int firstChunk;
	unsigned int secondChunk;

	while( FUNC0( ) < length && FUNC1( ) > 0 )
	{
		// Free enough space
		while( consoleLog[ readPos ] != '\n' && FUNC1( ) > 1 )
			readPos = ( readPos + 1 ) % MAX_LOG;

		// Skip past the '\n'
		readPos = ( readPos + 1 ) % MAX_LOG;
	}

	if( FUNC0( ) < length )
		return 0;

	if( writePos + length > MAX_LOG )
	{
		firstChunk  = MAX_LOG - writePos;
		secondChunk = length - firstChunk;
	}
	else
	{
		firstChunk  = length;
		secondChunk = 0;
	}

	FUNC2( consoleLog + writePos, in, firstChunk );
	FUNC2( consoleLog, in + firstChunk, secondChunk );

	writePos = ( writePos + length ) % MAX_LOG;

	return length;
}