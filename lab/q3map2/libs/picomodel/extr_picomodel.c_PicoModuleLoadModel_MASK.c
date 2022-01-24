#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ (* canload ) (char*,int /*<<< orphan*/ *,int) ;TYPE_2__* (* load ) (char*,int,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ picoModule_t ;
struct TYPE_9__ {TYPE_1__ const* module; } ;
typedef  TYPE_2__ picoModel_t ;
typedef  int /*<<< orphan*/  picoByte_t ;

/* Variables and functions */
 scalar_t__ PICO_PMV_OK ; 
 char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC8 (char*,int,int /*<<< orphan*/ *,int) ; 

picoModel_t *FUNC9( const picoModule_t* pm, char* fileName, picoByte_t* buffer, int bufSize, int frameNum ){
	char    *modelFileName, *remapFileName;

	/* see whether this module can load the model file or not */
	if ( pm->canload( fileName, buffer, bufSize ) == PICO_PMV_OK ) {
		/* use loader provided by module to read the model data */
		picoModel_t* model = pm->load( fileName, frameNum, buffer, bufSize );
		if ( model == NULL ) {
			return NULL;
		}

		/* assign pointer to file format module */
		model->module = pm;

		/* get model file name */
		modelFileName = FUNC0( model );

		/* apply model remappings from <model>.remap */
		if ( FUNC6( modelFileName ) ) {
			/* alloc copy of model file name */
			remapFileName = FUNC2( FUNC6( modelFileName ) + 20 );
			if ( remapFileName != NULL ) {
				/* copy model file name and change extension */
				FUNC5( remapFileName, modelFileName );
				FUNC4( remapFileName, "remap" );

				/* try to remap model; we don't handle the result */
				FUNC1( model, remapFileName );

				/* free the remap file name string */
				FUNC3( remapFileName );
			}
		}

		return model;
	}

	return NULL;
}