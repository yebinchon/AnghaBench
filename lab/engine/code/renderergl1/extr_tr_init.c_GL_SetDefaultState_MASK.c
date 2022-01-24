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
typedef  int /*<<< orphan*/  current_color ;
struct TYPE_4__ {int glStateBits; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; } ;
typedef  int GLfloat ;

/* Variables and functions */
 int GLS_DEPTHMASK_TRUE ; 
 int GLS_DEPTHTEST_DISABLE ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_CURRENT_COLOR ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_FILL ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_FRONT_AND_BACK ; 
 int /*<<< orphan*/  GL_LEQUAL ; 
 int /*<<< orphan*/  GL_MODULATE ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_SMOOTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 TYPE_2__ glState ; 
 scalar_t__ FUNC3 (int*,int const*,int) ; 
 scalar_t__ qglActiveTextureARB ; 
 int /*<<< orphan*/  FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_1__* r_textureMode ; 

void FUNC15( void )
{
	static const GLfloat initial_color[4] = {1, 1, 1, 1};
	GLfloat current_color[4];

	FUNC4( 1.0f );

	FUNC6(GL_FRONT);

	FUNC12(GL_CURRENT_COLOR, current_color);

	// Because of a bug in NVIDIA's driver, we should only change glColor if it is needed.
	if (FUNC3(current_color, initial_color, sizeof(current_color)) != 0) {
		FUNC5 (1,1,1,1);
	}

	// initialize downstream texture unit if we're running
	// in a multitexture environment
	if ( qglActiveTextureARB ) {
		FUNC0( 1 );
		FUNC2( r_textureMode->string );
		FUNC1( GL_MODULATE );
		FUNC9( GL_TEXTURE_2D );
		FUNC0( 0 );
	}

	FUNC10(GL_TEXTURE_2D);
	FUNC2( r_textureMode->string );
	FUNC1( GL_MODULATE );

	FUNC14( GL_SMOOTH );
	FUNC7( GL_LEQUAL );

	// the vertex array is always enabled, but the color and texture
	// arrays are enabled and disabled around the compiled vertex array call
	FUNC11 (GL_VERTEX_ARRAY);

	//
	// make sure our GL state vector is set correctly
	//
	glState.glStateBits = GLS_DEPTHTEST_DISABLE | GLS_DEPTHMASK_TRUE;

	FUNC13 (GL_FRONT_AND_BACK, GL_FILL);
	FUNC8( GL_TRUE );
	FUNC9( GL_DEPTH_TEST );
	FUNC10( GL_SCISSOR_TEST );
	FUNC9( GL_CULL_FACE );
	FUNC9( GL_BLEND );
}