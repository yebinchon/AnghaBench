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
struct TYPE_4__ {size_t currentObject; TYPE_1__* objects; scalar_t__ grabAnims; } ;
struct TYPE_3__ {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASE_KeyGEOMOBJECT ; 
 int /*<<< orphan*/  ASE_KeyMATERIAL_LIST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 size_t MAX_ASE_OBJECTS ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_2__ ase ; 
 int /*<<< orphan*/  qfalse ; 
 scalar_t__* s_token ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char*) ; 
 scalar_t__ FUNC10 (scalar_t__,char*) ; 

__attribute__((used)) static void FUNC11( void ){
	while ( FUNC1( qfalse ) )
	{
		if ( !FUNC9( s_token, "*3DSMAX_ASCIIEXPORT" ) ||
			 !FUNC9( s_token, "*COMMENT" ) ) {
			FUNC4();
		}
		else if ( !FUNC9( s_token, "*SCENE" ) ) {
			FUNC3();
		}
		else if ( !FUNC9( s_token, "*MATERIAL_LIST" ) ) {
			FUNC8( ( "MATERIAL_LIST\n" ) );

			FUNC2( ASE_KeyMATERIAL_LIST );
		}
		else if ( !FUNC9( s_token, "*GEOMOBJECT" ) ) {
			FUNC8( ( "GEOMOBJECT" ) );

			FUNC2( ASE_KeyGEOMOBJECT );

			if ( FUNC10( ase.objects[ase.currentObject].name, "Bip" ) ||
				 FUNC10( ase.objects[ase.currentObject].name, "ignore_" ) ) {
				FUNC0( ase.currentObject );
				FUNC8( ( "(discarding BIP/ignore object)\n" ) );
			}
			else if ( ( FUNC10( ase.objects[ase.currentObject].name, "h_" ) != ase.objects[ase.currentObject].name ) &&
					  ( FUNC10( ase.objects[ase.currentObject].name, "l_" ) != ase.objects[ase.currentObject].name ) &&
					  ( FUNC10( ase.objects[ase.currentObject].name, "u_" ) != ase.objects[ase.currentObject].name ) &&
					  ( FUNC10( ase.objects[ase.currentObject].name, "tag" ) != ase.objects[ase.currentObject].name ) &&
					  ase.grabAnims ) {
				FUNC8( ( "(ignoring improperly labeled object '%s')\n", ase.objects[ase.currentObject].name ) );
				FUNC0( ase.currentObject );
			}
			else
			{
				if ( ++ase.currentObject == MAX_ASE_OBJECTS ) {
					FUNC6( "Too many GEOMOBJECTs" );
				}
			}
		}
		else if ( s_token[0] ) {
			FUNC7( "Unknown token '%s'\n", s_token );
		}
	}

	if ( !ase.currentObject ) {
		FUNC6( "No animation data!" );
	}

	FUNC5();
}