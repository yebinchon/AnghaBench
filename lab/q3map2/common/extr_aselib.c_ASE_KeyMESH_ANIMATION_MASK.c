#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ faces; scalar_t__ vertexes; scalar_t__ tvertexes; } ;
typedef  TYPE_3__ aseMesh_t ;
struct TYPE_10__ {size_t currentObject; TYPE_2__* objects; } ;
struct TYPE_7__ {scalar_t__ currentFrame; } ;
struct TYPE_8__ {TYPE_1__ anim; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  ASE_KeyMESH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ MAX_ASE_ANIMATION_FRAMES ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_5__ ase ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7( const char *token ){
	aseMesh_t *pMesh = FUNC0();

	// loads a single animation frame
	if ( !FUNC6( token, "*MESH" ) ) {
		FUNC3( ( "...found MESH\n" ) );
		FUNC4( pMesh->faces == 0 );
		FUNC4( pMesh->vertexes == 0 );
		FUNC4( pMesh->tvertexes == 0 );
		FUNC5( pMesh, 0, sizeof( *pMesh ) );

		FUNC1( ASE_KeyMESH );

		if ( ++ase.objects[ase.currentObject].anim.currentFrame == MAX_ASE_ANIMATION_FRAMES ) {
			FUNC2( "Too many animation frames" );
		}
	}
	else
	{
		FUNC2( "Unknown token '%s' while parsing MESH_ANIMATION", token );
	}
}