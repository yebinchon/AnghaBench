#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BACK ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

GLboolean FUNC5()
{
    FUNC1(0.0f, 0.0f, 0.0f, 1.0f);       FUNC0("glClearColor");
    FUNC4(GL_CULL_FACE);                     FUNC0("glEnable(GL_CULL_FACE)");
    FUNC2(GL_BACK);                        FUNC0("glCullFace");
    FUNC3(GL_DEPTH_TEST);

    return GL_TRUE;
}