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
struct TYPE_4__ {int /*<<< orphan*/ * load; int /*<<< orphan*/ * canload; } ;
typedef  TYPE_1__ picoModule_t ;
typedef  int /*<<< orphan*/  picoModel_t ;
typedef  int /*<<< orphan*/  picoByte_t ;

/* Variables and functions */
 int /*<<< orphan*/  PICO_ERROR ; 
 TYPE_1__** FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__ const*,char*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

picoModel_t *FUNC5( char *fileName, int frameNum ){
	const picoModule_t  **modules, *pm;
	picoModel_t         *model;
	picoByte_t          *buffer;
	int bufSize;


	/* init */
	model = NULL;

	/* make sure we've got a file name */
	if ( fileName == NULL ) {
		FUNC4( PICO_ERROR, "PicoLoadModel: No filename given (fileName == NULL)" );
		return NULL;
	}

	/* load file data (buffer is allocated by host app) */
	FUNC3( fileName, &buffer, &bufSize );
	if ( bufSize < 0 ) {
		FUNC4( PICO_ERROR, "PicoLoadModel: Failed loading model %s", fileName );
		return NULL;
	}

	/* get ptr to list of supported modules */
	modules = FUNC0( NULL );

	/* run it through the various loader functions and try */
	/* to find a loader that fits the given file data */
	for ( ; *modules != NULL; modules++ )
	{
		/* get module */
		pm = *modules;

		/* sanity check */
		if ( pm == NULL ) {
			break;
		}

		/* module must be able to load */
		if ( pm->canload == NULL || pm->load == NULL ) {
			continue;
		}

		model = FUNC1( pm, fileName, buffer, bufSize, frameNum );
		if ( model != NULL ) {
			/* model was loaded, so break out of loop */
			break;
		}
	}

	/* free memory used by file buffer */
	if ( buffer ) {
		FUNC2( buffer );
	}

	return model;
}