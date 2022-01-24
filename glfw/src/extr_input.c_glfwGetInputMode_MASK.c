#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cursorMode; int stickyKeys; int stickyMouseButtons; int lockKeyMods; int rawMouseMotion; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
#define  GLFW_CURSOR 132 
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
#define  GLFW_LOCK_KEY_MODS 131 
#define  GLFW_RAW_MOUSE_MOTION 130 
#define  GLFW_STICKY_KEYS 129 
#define  GLFW_STICKY_MOUSE_BUTTONS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(GLFWwindow* handle, int mode)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC2(window != NULL);

    FUNC0(0);

    switch (mode)
    {
        case GLFW_CURSOR:
            return window->cursorMode;
        case GLFW_STICKY_KEYS:
            return window->stickyKeys;
        case GLFW_STICKY_MOUSE_BUTTONS:
            return window->stickyMouseButtons;
        case GLFW_LOCK_KEY_MODS:
            return window->lockKeyMods;
        case GLFW_RAW_MOUSE_MOTION:
            return window->rawMouseMotion;
    }

    FUNC1(GLFW_INVALID_ENUM, "Invalid input mode 0x%08X", mode);
    return 0;
}