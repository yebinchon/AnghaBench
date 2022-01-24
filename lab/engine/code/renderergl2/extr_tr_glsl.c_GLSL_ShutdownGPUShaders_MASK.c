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
struct TYPE_4__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/ * depthBlurShader; int /*<<< orphan*/  ssaoShader; int /*<<< orphan*/  shadowmaskShader; int /*<<< orphan*/ * calclevels4xShader; int /*<<< orphan*/  tonemapShader; int /*<<< orphan*/  bokehShader; int /*<<< orphan*/  down4xShader; int /*<<< orphan*/  pshadowShader; int /*<<< orphan*/ * shadowmapShader; int /*<<< orphan*/ * lightallShader; int /*<<< orphan*/ * dlightShader; int /*<<< orphan*/ * fogShader; int /*<<< orphan*/  textureColorShader; int /*<<< orphan*/ * genericShader; } ;

/* Variables and functions */
 int ATTR_INDEX_COUNT ; 
 int DLIGHTDEF_COUNT ; 
 int FOGDEF_COUNT ; 
 int GENERICDEF_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int LIGHTDEF_COUNT ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int SHADOWMAPDEF_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__ ri ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ tr ; 

void FUNC4(void)
{
	int i;

	ri.Printf(PRINT_ALL, "------- GLSL_ShutdownGPUShaders -------\n");

	for (i = 0; i < ATTR_INDEX_COUNT; i++)
		FUNC2(i);

	FUNC1();

	for ( i = 0; i < GENERICDEF_COUNT; i++)
		FUNC0(&tr.genericShader[i]);

	FUNC0(&tr.textureColorShader);

	for ( i = 0; i < FOGDEF_COUNT; i++)
		FUNC0(&tr.fogShader[i]);

	for ( i = 0; i < DLIGHTDEF_COUNT; i++)
		FUNC0(&tr.dlightShader[i]);

	for ( i = 0; i < LIGHTDEF_COUNT; i++)
		FUNC0(&tr.lightallShader[i]);

	for ( i = 0; i < SHADOWMAPDEF_COUNT; i++)
		FUNC0(&tr.shadowmapShader[i]);

	FUNC0(&tr.pshadowShader);
	FUNC0(&tr.down4xShader);
	FUNC0(&tr.bokehShader);
	FUNC0(&tr.tonemapShader);

	for ( i = 0; i < 2; i++)
		FUNC0(&tr.calclevels4xShader[i]);

	FUNC0(&tr.shadowmaskShader);
	FUNC0(&tr.ssaoShader);

	for ( i = 0; i < 4; i++)
		FUNC0(&tr.depthBlurShader[i]);
}