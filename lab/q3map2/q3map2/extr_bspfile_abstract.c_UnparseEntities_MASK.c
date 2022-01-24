#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; struct TYPE_4__* next; } ;
typedef  TYPE_1__ epair_t ;
struct TYPE_5__ {TYPE_1__* epairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_MAP_ENTSTRING ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (TYPE_2__*,char*) ; 
 char* bspEntData ; 
 int bspEntDataSize ; 
 TYPE_2__* entities ; 
 int numBSPEntities ; 
 int numEntities ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8( void ){
	int i;
	char        *buf, *end;
	epair_t     *ep;
	char line[ 2048 ];
	char key[ 1024 ], value[ 1024 ];
	const char  *value2;


	/* setup */
	buf = bspEntData;
	end = buf;
	*end = 0;

	/* run through entity list */
	for ( i = 0; i < numBSPEntities && i < numEntities; i++ )
	{
		/* get epair */
		ep = entities[ i ].epairs;
		if ( ep == NULL ) {
			continue;   /* ent got removed */

		}
		/* ydnar: certain entities get stripped from bsp file */
		value2 = FUNC3( &entities[ i ], "classname" );
		if ( !FUNC1( value2, "misc_model" ) ||
			 !FUNC1( value2, "_decal" ) ||
			 !FUNC1( value2, "_skybox" ) ) {
			continue;
		}

		/* add beginning brace */
		FUNC5( end, "{\n" );
		end += 2;

		/* walk epair list */
		for ( ep = entities[ i ].epairs; ep != NULL; ep = ep->next )
		{
			/* copy and clean */
			FUNC6( key, ep->key );
			FUNC2( key );
			FUNC6( value, ep->value );
			FUNC2( value );

			/* add to buffer */
			FUNC4( line, "\"%s\" \"%s\"\n", key, value );
			FUNC5( end, line );
			end += FUNC7( line );
		}

		/* add trailing brace */
		FUNC5( end,"}\n" );
		end += 2;

		/* check for overflow */
		if ( end > buf + MAX_MAP_ENTSTRING ) {
			FUNC0( "Entity text too long" );
		}
	}

	/* set size */
	bspEntDataSize = end - buf + 1;
}