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
struct TYPE_4__ {scalar_t__ vidWidth; int maxTextureSize; int numTextureUnits; int /*<<< orphan*/  textureEnvAddAvailable; } ;
struct TYPE_3__ {int glslMaxAnimatedBones; } ;
typedef  int GLint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GL_MAX_TEXTURE_IMAGE_UNITS ; 
 int /*<<< orphan*/  GL_MAX_TEXTURE_SIZE ; 
 int /*<<< orphan*/  GL_MAX_VERTEX_UNIFORM_COMPONENTS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  IQM_MAX_JOINTS ; 
 TYPE_2__ glConfig ; 
 TYPE_1__ glRefConfig ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC5( void )
{
	//
	// initialize OS specific portions of the renderer
	//
	// GLimp_Init directly or indirectly references the following cvars:
	//		- r_fullscreen
	//		- r_mode
	//		- r_(color|depth|stencil)bits
	//		- r_ignorehwgamma
	//		- r_gamma
	//
	
	if ( glConfig.vidWidth == 0 )
	{
		GLint		temp;
		
		FUNC2( qfalse );
		FUNC3();

		glConfig.textureEnvAddAvailable = qtrue;

		// OpenGL driver constants
		FUNC4( GL_MAX_TEXTURE_SIZE, &temp );
		glConfig.maxTextureSize = temp;

		// stubbed or broken drivers may have reported 0...
		if ( glConfig.maxTextureSize <= 0 ) 
		{
			glConfig.maxTextureSize = 0;
		}

		FUNC4( GL_MAX_TEXTURE_IMAGE_UNITS, &temp );
		glConfig.numTextureUnits = temp;

		// reserve 160 components for other uniforms
		FUNC4( GL_MAX_VERTEX_UNIFORM_COMPONENTS, &temp );
		glRefConfig.glslMaxAnimatedBones = FUNC0( 0, IQM_MAX_JOINTS, ( temp - 160 ) / 16 );
		if ( glRefConfig.glslMaxAnimatedBones < 12 ) {
			glRefConfig.glslMaxAnimatedBones = 0;
		}
	}

	// set default state
	FUNC1();
}