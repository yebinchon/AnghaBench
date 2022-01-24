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
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ seamlessCubeMap; scalar_t__ vertexArrayObject; scalar_t__ framebufferObject; } ;
struct TYPE_9__ {int glStateBits; scalar_t__ vertexAttribsEnabled; int /*<<< orphan*/ * currentVao; int /*<<< orphan*/  faceCullFront; int /*<<< orphan*/  faceCulling; scalar_t__ storedGlState; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_TWO_SIDED ; 
 int GLS_DEPTHMASK_TRUE ; 
 int GLS_DEPTHTEST_DISABLE ; 
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_ELEMENT_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_FILL ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_FRONT_AND_BACK ; 
 int /*<<< orphan*/  GL_LEQUAL ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_TEXTURE_CUBE_MAP_SEAMLESS ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__ glRefConfig ; 
 TYPE_4__ glState ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* r_offsetFactor ; 
 TYPE_2__* r_offsetUnits ; 
 TYPE_1__* r_textureMode ; 

void FUNC15( void )
{
	FUNC7( 1.0f );

	FUNC8(GL_FRONT);

	FUNC2();

	if (glRefConfig.framebufferObject)
		FUNC0();

	FUNC3( r_textureMode->string );

	//qglShadeModel( GL_SMOOTH );
	FUNC9( GL_LEQUAL );

	//
	// make sure our GL state vector is set correctly
	//
	glState.glStateBits = GLS_DEPTHTEST_DISABLE | GLS_DEPTHMASK_TRUE;
	glState.storedGlState = 0;
	glState.faceCulling = CT_TWO_SIDED;
	glState.faceCullFront = GL_FRONT;

	FUNC1();

	if (glRefConfig.vertexArrayObject)
		FUNC5(0);

	FUNC4(GL_ARRAY_BUFFER, 0);
	FUNC4(GL_ELEMENT_ARRAY_BUFFER, 0);
	glState.currentVao = NULL;
	glState.vertexAttribsEnabled = 0;

	FUNC13 (GL_FRONT_AND_BACK, GL_FILL);
	FUNC10( GL_TRUE );
	FUNC11( GL_DEPTH_TEST );
	FUNC12( GL_SCISSOR_TEST );
	FUNC11( GL_CULL_FACE );
	FUNC11( GL_BLEND );

	if (glRefConfig.seamlessCubeMap)
		FUNC12(GL_TEXTURE_CUBE_MAP_SEAMLESS);

	// GL_POLYGON_OFFSET_FILL will be glEnable()d when this is used
	FUNC14( r_offsetFactor->value, r_offsetUnits->value );

	FUNC6( 0.0f, 0.0f, 0.0f, 1.0f );	// FIXME: get color of sky
}