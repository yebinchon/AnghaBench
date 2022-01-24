#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
typedef  int /*<<< orphan*/  vec2_t ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_14__ {scalar_t__ framePostProcessed; } ;
struct TYPE_13__ {scalar_t__ framebufferObject; } ;
struct TYPE_12__ {int /*<<< orphan*/  modelviewProjection; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int (* Milliseconds ) () ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int,int,int) ;int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*,int,int) ;} ;
struct TYPE_9__ {scalar_t__ numIndexes; } ;
struct TYPE_8__ {int /*<<< orphan*/  textureColorShader; int /*<<< orphan*/ * renderFbo; int /*<<< orphan*/ * scratchImage; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  TB_COLORMAP ; 
 int /*<<< orphan*/  UNIFORM_COLOR ; 
 int /*<<< orphan*/  UNIFORM_MODELVIEWPROJECTIONMATRIX ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,float,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,float,float) ; 
 TYPE_7__ backEnd ; 
 int /*<<< orphan*/  colorWhite ; 
 TYPE_6__ glRefConfig ; 
 TYPE_5__ glState ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_4__* r_speeds ; 
 TYPE_3__ ri ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 TYPE_2__ tess ; 
 TYPE_1__ tr ; 

void FUNC17 (int x, int y, int w, int h, int cols, int rows, const byte *data, int client, qboolean dirty) {
	int			i, j;
	int			start, end;
	vec4_t quadVerts[4];
	vec2_t texCoords[4];

	if ( !tr.registered ) {
		return;
	}
	FUNC9();

	if ( tess.numIndexes ) {
		FUNC5();
	}

	// we definitely want to sync every frame for the cinematics
	FUNC12();

	start = 0;
	if ( r_speeds->integer ) {
		start = ri.Milliseconds();
	}

	// make sure rows and cols are powers of 2
	for ( i = 0 ; ( 1 << i ) < cols ; i++ ) {
	}
	for ( j = 0 ; ( 1 << j ) < rows ; j++ ) {
	}
	if ( ( 1 << i ) != cols || ( 1 << j ) != rows) {
		ri.Error (ERR_DROP, "Draw_StretchRaw: size not a power of 2: %i by %i", cols, rows);
	}

	FUNC8 (w, h, cols, rows, data, client, dirty);
	FUNC4(tr.scratchImage[client], TB_COLORMAP);

	if ( r_speeds->integer ) {
		end = ri.Milliseconds();
		ri.Printf( PRINT_ALL, "qglTexSubImage2D %i, %i: %i msec\n", cols, rows, end - start );
	}

	// FIXME: HUGE hack
	if (glRefConfig.framebufferObject)
	{
		FUNC0(backEnd.framePostProcessed ? NULL : tr.renderFbo);
	}

	FUNC7();

	FUNC11(quadVerts[0], x,     y,     0.0f, 1.0f);
	FUNC11(quadVerts[1], x + w, y,     0.0f, 1.0f);
	FUNC11(quadVerts[2], x + w, y + h, 0.0f, 1.0f);
	FUNC11(quadVerts[3], x,     y + h, 0.0f, 1.0f);

	FUNC10(texCoords[0], 0.5f / cols,          0.5f / rows);
	FUNC10(texCoords[1], (cols - 0.5f) / cols, 0.5f / rows);
	FUNC10(texCoords[2], (cols - 0.5f) / cols, (rows - 0.5f) / rows);
	FUNC10(texCoords[3], 0.5f / cols,          (rows - 0.5f) / rows);

	FUNC1(&tr.textureColorShader);
	
	FUNC2(&tr.textureColorShader, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);
	FUNC3(&tr.textureColorShader, UNIFORM_COLOR, colorWhite);

	FUNC6(quadVerts, texCoords);
}