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
typedef  int /*<<< orphan*/  vec4_t ;
typedef  int /*<<< orphan*/  vec2_t ;
struct TYPE_4__ {int /*<<< orphan*/  modelviewProjection; } ;
struct TYPE_3__ {int /*<<< orphan*/  textureColorShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UNIFORM_COLOR ; 
 int /*<<< orphan*/  UNIFORM_MODELVIEWPROJECTIONMATRIX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/  colorWhite ; 
 TYPE_2__ glState ; 
 TYPE_1__ tr ; 

void FUNC5(vec4_t quadVerts[4])
{
	vec2_t texCoords[4];

	FUNC4(texCoords[0], 0.0f, 0.0f);
	FUNC4(texCoords[1], 1.0f, 0.0f);
	FUNC4(texCoords[2], 1.0f, 1.0f);
	FUNC4(texCoords[3], 0.0f, 1.0f);

	FUNC0(&tr.textureColorShader);
	
	FUNC1(&tr.textureColorShader, UNIFORM_MODELVIEWPROJECTIONMATRIX, glState.modelviewProjection);
	FUNC2(&tr.textureColorShader, UNIFORM_COLOR, colorWhite);

	FUNC3(quadVerts, texCoords);
}