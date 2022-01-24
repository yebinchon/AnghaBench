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
struct TYPE_3__ {float* texcoords; } ;
typedef  TYPE_1__ IJK_GLES2_Renderer ;
typedef  float GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(IJK_GLES2_Renderer *renderer, GLfloat cropRight)
{
    FUNC0("IJK_GLES2_Renderer_TexCoords_cropRight\n");
    renderer->texcoords[0] = 0.0f;
    renderer->texcoords[1] = 1.0f;
    renderer->texcoords[2] = 1.0f - cropRight;
    renderer->texcoords[3] = 1.0f;
    renderer->texcoords[4] = 0.0f;
    renderer->texcoords[5] = 0.0f;
    renderer->texcoords[6] = 1.0f - cropRight;
    renderer->texcoords[7] = 0.0f;
}