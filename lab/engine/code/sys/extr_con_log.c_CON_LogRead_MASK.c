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
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,unsigned int) ; 
 unsigned int MAX_LOG ; 
 scalar_t__ consoleLog ; 
 unsigned int readPos ; 

unsigned int FUNC2( char *out, unsigned int outSize )
{
	unsigned int firstChunk;
	unsigned int secondChunk;

	if( FUNC0( ) < outSize )
		outSize = FUNC0( );

	if( readPos + outSize > MAX_LOG )
	{
		firstChunk  = MAX_LOG - readPos;
		secondChunk = outSize - firstChunk;
	}
	else
	{
		firstChunk  = outSize;
		secondChunk = 0;
	}

	FUNC1( out, consoleLog + readPos, firstChunk );
	FUNC1( out + firstChunk, consoleLog, secondChunk );

	readPos = ( readPos + outSize ) % MAX_LOG;

	return outSize;
}