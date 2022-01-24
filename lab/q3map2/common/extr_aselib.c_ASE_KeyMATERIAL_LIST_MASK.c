#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ numMaterials; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASE_KeyMATERIAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ MAX_ASE_MATERIALS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ ase ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  s_token ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6( const char *token ){
	if ( !FUNC5( token, "*MATERIAL_COUNT" ) ) {
		FUNC0( qfalse );
		FUNC3( ( "..num materials: %s\n", s_token ) );
		if ( FUNC4( s_token ) > MAX_ASE_MATERIALS ) {
			FUNC2( "Too many materials!" );
		}
		ase.numMaterials = 0;
	}
	else if ( !FUNC5( token, "*MATERIAL" ) ) {
		FUNC3( ( "..material %d ", ase.numMaterials ) );
		FUNC1( ASE_KeyMATERIAL );
		ase.numMaterials++;
	}
}