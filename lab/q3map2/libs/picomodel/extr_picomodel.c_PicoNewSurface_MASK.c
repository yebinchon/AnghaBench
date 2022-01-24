#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* model; } ;
typedef  TYPE_1__ picoSurface_t ;
struct TYPE_11__ {int numSurfaces; TYPE_1__** surface; } ;
typedef  TYPE_2__ picoModel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

picoSurface_t *FUNC6( picoModel_t *model ){
	picoSurface_t   *surface;
	char surfaceName[64];

	/* allocate and clear */
	surface = FUNC2( sizeof( *surface ) );
	if ( surface == NULL ) {
		return NULL;
	}
	FUNC4( surface, 0, sizeof( *surface ) );

	/* attach it to the model */
	if ( model != NULL ) {
		/* adjust model */
		if ( !FUNC0( model, 0, model->numSurfaces + 1 ) ) {
			FUNC3( surface );
			return NULL;
		}

		/* attach */
		model->surface[ model->numSurfaces - 1 ] = surface;
		surface->model = model;

		/* set default name */
		FUNC5( surfaceName, "Unnamed_%d", model->numSurfaces );
		FUNC1( surface, surfaceName );
	}

	/* return */
	return surface;
}