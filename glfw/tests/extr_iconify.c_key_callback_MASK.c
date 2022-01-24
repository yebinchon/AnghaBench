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
 int /*<<< orphan*/  GLFW_AUTO_ICONIFY ; 
 int /*<<< orphan*/  GLFW_DECORATED ; 
 int /*<<< orphan*/  GLFW_FLOATING ; 
#define  GLFW_KEY_A 137 
#define  GLFW_KEY_B 136 
#define  GLFW_KEY_D 135 
#define  GLFW_KEY_ENTER 134 
#define  GLFW_KEY_ESCAPE 133 
#define  GLFW_KEY_F 132 
#define  GLFW_KEY_F11 131 
#define  GLFW_KEY_I 130 
#define  GLFW_KEY_M 129 
#define  GLFW_KEY_R 128 
 int GLFW_MOD_ALT ; 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  GLFW_RESIZABLE ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 double FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,double,char*) ; 
 int /*<<< orphan*/  windowed_height ; 
 int /*<<< orphan*/  windowed_width ; 
 int /*<<< orphan*/  windowed_xpos ; 
 int /*<<< orphan*/  windowed_ypos ; 

__attribute__((used)) static void FUNC14(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    FUNC13("%0.2f Key %s\n",
           FUNC1(),
           action == GLFW_PRESS ? "pressed" : "released");

    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case GLFW_KEY_I:
            FUNC7(window);
            break;
        case GLFW_KEY_M:
            FUNC8(window);
            break;
        case GLFW_KEY_R:
            FUNC9(window);
            break;
        case GLFW_KEY_ESCAPE:
            FUNC12(window, GLFW_TRUE);
            break;
        case GLFW_KEY_A:
            FUNC10(window, GLFW_AUTO_ICONIFY, !FUNC3(window, GLFW_AUTO_ICONIFY));
            break;
        case GLFW_KEY_B:
            FUNC10(window, GLFW_RESIZABLE, !FUNC3(window, GLFW_RESIZABLE));
            break;
        case GLFW_KEY_D:
            FUNC10(window, GLFW_DECORATED, !FUNC3(window, GLFW_DECORATED));
            break;
        case GLFW_KEY_F:
            FUNC10(window, GLFW_FLOATING, !FUNC3(window, GLFW_FLOATING));
            break;
        case GLFW_KEY_F11:
        case GLFW_KEY_ENTER:
        {
            if (mods != GLFW_MOD_ALT)
                return;

            if (FUNC4(window))
            {
                FUNC11(window, NULL,
                                     windowed_xpos, windowed_ypos,
                                     windowed_width, windowed_height,
                                     0);
            }
            else
            {
                GLFWmonitor* monitor = FUNC0();
                if (monitor)
                {
                    const GLFWvidmode* mode = FUNC2(monitor);
                    FUNC5(window, &windowed_xpos, &windowed_ypos);
                    FUNC6(window, &windowed_width, &windowed_height);
                    FUNC11(window, monitor,
                                         0, 0, mode->width, mode->height,
                                         mode->refreshRate);
                }
            }

            break;
        }
    }
}