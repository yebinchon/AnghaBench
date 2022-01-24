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
typedef  scalar_t__ mat4x4 ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GL_PROJECTION ; 
 scalar_t__ M_PI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,float,float,float,float) ; 

void FUNC4(GLFWwindow* window, int width, int height)
{
    float ratio = 1.f;
    mat4x4 projection;

    if (height > 0)
        ratio = (float) width / (float) height;

    // Setup viewport
    FUNC2(0, 0, width, height);

    // Change to the projection matrix and set our viewing volume
    FUNC1(GL_PROJECTION);
    FUNC3(projection,
                       60.f * (float) M_PI / 180.f,
                       ratio,
                       1.f, 1024.f);
    FUNC0((const GLfloat*) projection);
}