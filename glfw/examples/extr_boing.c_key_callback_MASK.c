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
struct TYPE_3__ {int /*<<< orphan*/  refreshRate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int GLFW_KEY_ENTER ; 
 int GLFW_KEY_ESCAPE ; 
 int GLFW_KEY_F11 ; 
 int GLFW_MOD_ALT ; 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  windowed_height ; 
 int /*<<< orphan*/  windowed_width ; 
 int /*<<< orphan*/  windowed_xpos ; 
 int /*<<< orphan*/  windowed_ypos ; 

void FUNC7( GLFWwindow* window, int key, int scancode, int action, int mods )
{
    if (action != GLFW_PRESS)
        return;

    if (key == GLFW_KEY_ESCAPE && mods == 0)
        FUNC6(window, GLFW_TRUE);
    if ((key == GLFW_KEY_ENTER && mods == GLFW_MOD_ALT) ||
        (key == GLFW_KEY_F11 && mods == GLFW_MOD_ALT))
    {
        if (FUNC2(window))
        {
            FUNC5(window, NULL,
                                 windowed_xpos, windowed_ypos,
                                 windowed_width, windowed_height, 0);
        }
        else
        {
            GLFWmonitor* monitor = FUNC0();
            if (monitor)
            {
                const GLFWvidmode* mode = FUNC1(monitor);
                FUNC3(window, &windowed_xpos, &windowed_ypos);
                FUNC4(window, &windowed_width, &windowed_height);
                FUNC5(window, monitor, 0, 0, mode->width, mode->height, mode->refreshRate);
            }
        }
    }
}