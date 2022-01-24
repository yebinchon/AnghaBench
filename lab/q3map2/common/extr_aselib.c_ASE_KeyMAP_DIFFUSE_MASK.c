#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t numMaterials; TYPE_1__* materials; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 TYPE_2__ ase ; 
 char* gamedir ; 
 char* gl_filename ; 
 int /*<<< orphan*/  qfalse ; 
 char* s_token ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 

__attribute__((used)) static void FUNC10( const char *token ){
	char bitmap[1024];
	char filename[1024];
	int i = 0;

	FUNC7( filename, gl_filename );

	if ( !FUNC6( token, "*BITMAP" ) ) {
		FUNC0( qfalse );

		// the purpose of this whole chunk of code below is to extract the relative path
		// from a full path in the ASE

		FUNC7( bitmap, s_token + 1 );
		if ( FUNC5( bitmap, '"' ) ) {
			*FUNC5( bitmap, '"' ) = 0;
		}

		/* convert backslash to slash */
		while ( bitmap[i] )
		{
			if ( bitmap[i] == '\\' ) {
				bitmap[i] = '/';
			}
			i++;
		}

		/* remove filename from path */
		for ( i = FUNC8( filename ); i > 0; i-- )
		{
			if ( filename[i] == '/' ) {
				filename[i] = '\0';
				break;
			}
		}

		/* replaces a relative path with a full path */
		if ( bitmap[0] == '.' && bitmap[1] == '.' && bitmap[2] == '/' ) {
			while ( bitmap[0] == '.' && bitmap[1] == '.' && bitmap[2] == '/' )
			{
				/* remove last item from path */
				for ( i = FUNC8( filename ); i > 0; i-- )
				{
					if ( filename[i] == '/' ) {
						filename[i] = '\0';
						break;
					}
				}
				FUNC7( bitmap, &bitmap[3] );
			}
			FUNC4( filename, "/" );
			FUNC4( filename, bitmap );
			FUNC7( bitmap, filename );
		}

		if ( FUNC9( bitmap, gamedir ) ) {
			FUNC7( ase.materials[ase.numMaterials].name, FUNC9( bitmap, gamedir ) + FUNC8( gamedir ) );
			FUNC2( "material name: \'%s\'\n", FUNC9( bitmap, gamedir ) + FUNC8( gamedir ) );
		}
		else
		{
			FUNC3( ase.materials[ase.numMaterials].name, "(not converted: '%s')", bitmap );
			FUNC1( SYS_WRN, "WARNING: illegal material name '%s'\n", bitmap );
		}
	}
	else
	{
	}
}