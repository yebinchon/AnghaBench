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
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(GLFWwindow* handle, float opacity)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC3(window != NULL);
    FUNC3(opacity == opacity);
    FUNC3(opacity >= 0.f);
    FUNC3(opacity <= 1.f);

    FUNC0();

    if (opacity != opacity || opacity < 0.f || opacity > 1.f)
    {
        FUNC1(GLFW_INVALID_VALUE, "Invalid window opacity %f", opacity);
        return;
    }

    FUNC2(window, opacity);
}