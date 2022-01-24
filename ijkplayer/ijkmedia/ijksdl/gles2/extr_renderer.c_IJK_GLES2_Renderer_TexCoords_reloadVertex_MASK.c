#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  av2_texcoord; int /*<<< orphan*/  texcoords; } ;
typedef  TYPE_1__ IJK_GLES2_Renderer ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(IJK_GLES2_Renderer *renderer)
{
    FUNC2(renderer->av2_texcoord, 2, GL_FLOAT, GL_FALSE, 0, renderer->texcoords);   FUNC0("glVertexAttribPointer(av2_texcoord)");
    FUNC1(renderer->av2_texcoord);                                              FUNC0("glEnableVertexAttribArray(av2_texcoord)");
}