#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cursorMode; int stickyKeys; scalar_t__* keys; int stickyMouseButtons; scalar_t__* mouseButtons; int rawMouseMotion; void* lockKeyMods; int /*<<< orphan*/  virtualCursorPosY; int /*<<< orphan*/  virtualCursorPosX; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int GLFW_CURSOR ; 
 int GLFW_CURSOR_DISABLED ; 
 int GLFW_CURSOR_HIDDEN ; 
 int GLFW_CURSOR_NORMAL ; 
 void* GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 int GLFW_KEY_LAST ; 
 int GLFW_LOCK_KEY_MODS ; 
 int GLFW_MOUSE_BUTTON_LAST ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GLFW_RAW_MOUSE_MOTION ; 
 void* GLFW_RELEASE ; 
 int GLFW_STICKY_KEYS ; 
 int GLFW_STICKY_MOUSE_BUTTONS ; 
 void* GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ _GLFW_STICK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(GLFWwindow* handle, int mode, int value)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC6(window != NULL);

    FUNC0();

    if (mode == GLFW_CURSOR)
    {
        if (value != GLFW_CURSOR_NORMAL &&
            value != GLFW_CURSOR_HIDDEN &&
            value != GLFW_CURSOR_DISABLED)
        {
            FUNC1(GLFW_INVALID_ENUM,
                            "Invalid cursor mode 0x%08X",
                            value);
            return;
        }

        if (window->cursorMode == value)
            return;

        window->cursorMode = value;

        FUNC2(window,
                                  &window->virtualCursorPosX,
                                  &window->virtualCursorPosY);
        FUNC4(window, value);
    }
    else if (mode == GLFW_STICKY_KEYS)
    {
        value = value ? GLFW_TRUE : GLFW_FALSE;
        if (window->stickyKeys == value)
            return;

        if (!value)
        {
            int i;

            // Release all sticky keys
            for (i = 0;  i <= GLFW_KEY_LAST;  i++)
            {
                if (window->keys[i] == _GLFW_STICK)
                    window->keys[i] = GLFW_RELEASE;
            }
        }

        window->stickyKeys = value;
    }
    else if (mode == GLFW_STICKY_MOUSE_BUTTONS)
    {
        value = value ? GLFW_TRUE : GLFW_FALSE;
        if (window->stickyMouseButtons == value)
            return;

        if (!value)
        {
            int i;

            // Release all sticky mouse buttons
            for (i = 0;  i <= GLFW_MOUSE_BUTTON_LAST;  i++)
            {
                if (window->mouseButtons[i] == _GLFW_STICK)
                    window->mouseButtons[i] = GLFW_RELEASE;
            }
        }

        window->stickyMouseButtons = value;
    }
    else if (mode == GLFW_LOCK_KEY_MODS)
    {
        window->lockKeyMods = value ? GLFW_TRUE : GLFW_FALSE;
    }
    else if (mode == GLFW_RAW_MOUSE_MOTION)
    {
        if (!FUNC3())
        {
            FUNC1(GLFW_PLATFORM_ERROR,
                            "Raw mouse motion is not supported on this system");
            return;
        }

        value = value ? GLFW_TRUE : GLFW_FALSE;
        if (window->rawMouseMotion == value)
            return;

        window->rawMouseMotion = value;
        FUNC5(window, value);
    }
    else
        FUNC1(GLFW_INVALID_ENUM, "Invalid input mode 0x%08X", mode);
}