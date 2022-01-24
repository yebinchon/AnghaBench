#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {int /*<<< orphan*/ * patches; int /*<<< orphan*/ * brushes; } ;
typedef  TYPE_1__ entity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* entities ; 
 size_t mapEntityNum ; 
 int /*<<< orphan*/  numBSPModels ; 
 size_t numEntities ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  verboseEntities ; 

void FUNC6( void ){
	qboolean oldVerbose;
	entity_t    *entity;


	/* preserve -v setting */
	oldVerbose = verbose;

	/* start a new bsp */
	FUNC0();

	/* create map fogs */
	FUNC1();

	/* walk entity list */
	for ( mapEntityNum = 0; mapEntityNum < numEntities; mapEntityNum++ )
	{
		/* get entity */
		entity = &entities[ mapEntityNum ];
		if ( entity->brushes == NULL && entity->patches == NULL ) {
			continue;
		}

		/* process the model */
		FUNC5( SYS_VRB, "############### model %i ###############\n", numBSPModels );
		if ( mapEntityNum == 0 ) {
			FUNC4();
		}
		else{
			FUNC3();
		}

		/* potentially turn off the deluge of text */
		verbose = verboseEntities;
	}

	/* restore -v setting */
	verbose = oldVerbose;

	/* write fogs */
	FUNC2();
}