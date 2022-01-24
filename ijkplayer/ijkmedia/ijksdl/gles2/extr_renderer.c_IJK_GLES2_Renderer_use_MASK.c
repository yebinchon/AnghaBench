#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  um4_mvp; int /*<<< orphan*/  (* func_use ) (TYPE_2__*) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  m; } ;
typedef  TYPE_1__ IJK_GLES_Matrix ;
typedef  TYPE_2__ IJK_GLES2_Renderer ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (TYPE_2__*)) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

GLboolean FUNC9(IJK_GLES2_Renderer *renderer)
{
    if (!renderer)
        return GL_FALSE;

    FUNC6(renderer->func_use);
    if (!renderer->func_use(renderer))
        return GL_FALSE;

    IJK_GLES_Matrix modelViewProj;
    FUNC5(&modelViewProj, -1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f);
    FUNC7(renderer->um4_mvp, 1, GL_FALSE, modelViewProj.m);                    FUNC4("glUniformMatrix4fv(um4_mvp)");

    FUNC1(renderer);
    FUNC0(renderer);

    FUNC3(renderer);
    FUNC2(renderer);

    return GL_TRUE;
}