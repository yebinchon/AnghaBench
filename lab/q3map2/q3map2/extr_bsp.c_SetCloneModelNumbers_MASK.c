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
struct TYPE_4__ {int /*<<< orphan*/ * patches; int /*<<< orphan*/ * brushes; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (char const*) ; 
 TYPE_1__* entities ; 
 int numEntities ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

__attribute__((used)) static void FUNC6( void ){
	int i, j;
	int models;
	char modelValue[ 10 ];
	const char  *value, *value2, *value3;


	/* start with 1 (worldspawn is model 0) */
	models = 1;
	for ( i = 1; i < numEntities; i++ )
	{
		/* only entities with brushes or patches get a model number */
		if ( entities[ i ].brushes == NULL && entities[ i ].patches == NULL ) {
			continue;
		}

		/* is this a clone? */
		value = FUNC2( &entities[ i ], "_clone" );
		if ( value[ 0 ] != '\0' ) {
			continue;
		}

		/* add the model key */
		FUNC4( modelValue, "*%d", models );
		FUNC0( &entities[ i ], "model", modelValue );

		/* increment model count */
		models++;
	}

	/* fix up clones */
	for ( i = 1; i < numEntities; i++ )
	{
		/* only entities with brushes or patches get a model number */
		if ( entities[ i ].brushes == NULL && entities[ i ].patches == NULL ) {
			continue;
		}

		/* is this a clone? */
		value = FUNC2( &entities[ i ], "_ins" );
		if ( value[ 0 ] == '\0' ) {
			value = FUNC2( &entities[ i ], "_instance" );
		}
		if ( value[ 0 ] == '\0' ) {
			value = FUNC2( &entities[ i ], "_clone" );
		}
		if ( value[ 0 ] == '\0' ) {
			continue;
		}

		/* find an entity with matching clone name */
		for ( j = 0; j < numEntities; j++ )
		{
			/* is this a clone parent? */
			value2 = FUNC2( &entities[ j ], "_clonename" );
			if ( value2[ 0 ] == '\0' ) {
				continue;
			}

			/* do they match? */
			if ( FUNC5( value, value2 ) == 0 ) {
				/* get the model num */
				value3 = FUNC2( &entities[ j ], "model" );
				if ( value3[ 0 ] == '\0' ) {
					FUNC1( SYS_WRN, "WARNING: Cloned entity %s referenced entity without model\n", value2 );
					continue;
				}
				models = FUNC3( &value2[ 1 ] );

				/* add the model key */
				FUNC4( modelValue, "*%d", models );
				FUNC0( &entities[ i ], "model", modelValue );

				/* nuke the brushes/patches for this entity (fixme: leak!) */
				entities[ i ].brushes = NULL;
				entities[ i ].patches = NULL;
			}
		}
	}
}