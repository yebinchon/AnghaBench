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
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
#define  GLFW_KEY_ESCAPE 130 
#define  GLFW_KEY_SPACE 129 
#define  GLFW_KEY_X 128 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int cur_icon_color ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case GLFW_KEY_ESCAPE:
            FUNC1(window, GLFW_TRUE);
            break;
        case GLFW_KEY_SPACE:
            cur_icon_color = (cur_icon_color + 1) % 5;
            FUNC2(window, cur_icon_color);
            break;
        case GLFW_KEY_X:
            FUNC0(window, 0, NULL);
            break;
    }
}