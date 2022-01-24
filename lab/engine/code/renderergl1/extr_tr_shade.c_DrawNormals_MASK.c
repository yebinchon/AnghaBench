#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {int numVertexes; int /*<<< orphan*/ * normal; int /*<<< orphan*/ * xyz; } ;
typedef  TYPE_1__ shaderCommands_t ;
struct TYPE_5__ {int /*<<< orphan*/  whiteImage; } ;

/* Variables and functions */
 int GLS_DEPTHMASK_TRUE ; 
 int GLS_POLYMODE_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_LINES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__ tr ; 

__attribute__((used)) static void FUNC8 (shaderCommands_t *input) {
	int		i;
	vec3_t	temp;

	FUNC0( tr.whiteImage );
	FUNC4 (1,1,1);
	FUNC5( 0, 0 );	// never occluded
	FUNC1( GLS_POLYMODE_LINE | GLS_DEPTHMASK_TRUE );

	FUNC3 (GL_LINES);
	for (i = 0 ; i < input->numVertexes ; i++) {
		FUNC7 (input->xyz[i]);
		FUNC2 (input->xyz[i], 2, input->normal[i], temp);
		FUNC7 (temp);
	}
	FUNC6 ();

	FUNC5( 0, 1 );
}