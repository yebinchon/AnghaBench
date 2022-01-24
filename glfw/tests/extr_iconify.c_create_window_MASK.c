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
struct TYPE_3__ {int width; int height; int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; int /*<<< orphan*/  refreshRate; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  GLFW_BLUE_BITS ; 
 int /*<<< orphan*/  GLFW_GREEN_BITS ; 
 int /*<<< orphan*/  GLFW_RED_BITS ; 
 int /*<<< orphan*/  GLFW_REFRESH_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GLFWwindow* FUNC7(GLFWmonitor* monitor)
{
    int width, height;
    GLFWwindow* window;

    if (monitor)
    {
        const GLFWvidmode* mode = FUNC3(monitor);

        FUNC6(GLFW_REFRESH_RATE, mode->refreshRate);
        FUNC6(GLFW_RED_BITS, mode->redBits);
        FUNC6(GLFW_GREEN_BITS, mode->greenBits);
        FUNC6(GLFW_BLUE_BITS, mode->blueBits);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 640;
        height = 480;
    }

    window = FUNC2(width, height, "Iconify", monitor, NULL);
    if (!window)
    {
        FUNC5();
        FUNC0(EXIT_FAILURE);
    }

    FUNC4(window);
    FUNC1(glfwGetProcAddress);

    return window;
}