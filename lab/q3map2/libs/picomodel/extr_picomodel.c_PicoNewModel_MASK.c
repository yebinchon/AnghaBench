#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numFrames; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_1__ picoModel_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

picoModel_t *FUNC3( void ){
	picoModel_t *model;

	/* allocate */
	model = FUNC0( sizeof( picoModel_t ) );
	if ( model == NULL ) {
		return NULL;
	}

	/* clear */
	FUNC2( model, 0, sizeof( picoModel_t ) );

	/* model set up */
	FUNC1( model->mins, model->maxs );

	/* set initial frame count to 1 -sea */
	model->numFrames = 1;

	/* return ptr to new model */
	return model;
}