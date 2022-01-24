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
struct TYPE_4__ {int numShaders; int numSurfaces; int /*<<< orphan*/ * surface; int /*<<< orphan*/ * shader; struct TYPE_4__* fileName; struct TYPE_4__* name; } ;
typedef  TYPE_1__ picoModel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4( picoModel_t *model ){
	int i;

	/* sanity check */
	if ( model == NULL ) {
		return;
	}

	/* free bits */
	if ( model->name ) {
		FUNC2( model->name );
	}

	if ( model->fileName ) {
		FUNC2( model->fileName );
	}

	/* free shaders */
	for ( i = 0; i < model->numShaders; i++ )
		FUNC0( model->shader[ i ] );
	FUNC3( model->shader );

	/* free surfaces */
	for ( i = 0; i < model->numSurfaces; i++ )
		FUNC1( model->surface[ i ] );
	FUNC3( model->surface );

	/* free the model */
	FUNC2( model );
}