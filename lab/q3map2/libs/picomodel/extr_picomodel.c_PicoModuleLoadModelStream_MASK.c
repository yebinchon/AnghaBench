#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * defaultExts; } ;
typedef  TYPE_1__ picoModule_t ;
typedef  int /*<<< orphan*/  picoModel_t ;
typedef  char picoByte_t ;
typedef  scalar_t__ (* PicoInputStreamReadFunc ) (void*,char*,size_t) ;

/* Variables and functions */
 int /*<<< orphan*/  PICO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__ const*,char*,char*,int,int) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

picoModel_t	*FUNC5( const picoModule_t* module, void* inputStream, PicoInputStreamReadFunc inputStreamRead, size_t streamLength, int frameNum ) {
	picoModel_t			*model;
	picoByte_t			*buffer;
	int					bufSize;

	/* init */
	model = NULL;

	if ( inputStream == NULL ) {
		FUNC3( PICO_ERROR, "PicoLoadModel: invalid input stream (inputStream == NULL)" );
		return NULL;
	}

	if ( inputStreamRead == NULL ) {
		FUNC3( PICO_ERROR, "PicoLoadModel: invalid input stream (inputStreamRead == NULL) ");
		return NULL;
	}

	buffer = FUNC1( streamLength + 1 );

	bufSize = (int)inputStreamRead( inputStream, buffer, streamLength );
	buffer[ bufSize ] = '\0';

	{
		// dummy filename
		char fileName[128];
		fileName[0] = '.';
		FUNC4( fileName + 1, module->defaultExts[ 0 ], 126 );
		fileName[127] = '\0';
		model = FUNC0( module, fileName, buffer, bufSize, frameNum );
	}

	/* free memory used by file buffer */
	if ( model != 0 ) {
		FUNC2( buffer );
	}

	return model;
}