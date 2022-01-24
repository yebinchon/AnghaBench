#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int client; int source; int major; int minor; int revision; int robustness; int forward; int debug; int profile; int release; int noerror; } ;
struct TYPE_10__ {int focusOnShow; int resizable; int decorated; int floating; int autoIconify; TYPE_1__ context; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
#define  GLFW_AUTO_ICONIFY 149 
#define  GLFW_CLIENT_API 148 
#define  GLFW_CONTEXT_CREATION_API 147 
#define  GLFW_CONTEXT_NO_ERROR 146 
#define  GLFW_CONTEXT_RELEASE_BEHAVIOR 145 
#define  GLFW_CONTEXT_REVISION 144 
#define  GLFW_CONTEXT_ROBUSTNESS 143 
#define  GLFW_CONTEXT_VERSION_MAJOR 142 
#define  GLFW_CONTEXT_VERSION_MINOR 141 
#define  GLFW_DECORATED 140 
#define  GLFW_FLOATING 139 
#define  GLFW_FOCUSED 138 
#define  GLFW_FOCUS_ON_SHOW 137 
#define  GLFW_HOVERED 136 
#define  GLFW_ICONIFIED 135 
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
#define  GLFW_MAXIMIZED 134 
#define  GLFW_OPENGL_DEBUG_CONTEXT 133 
#define  GLFW_OPENGL_FORWARD_COMPAT 132 
#define  GLFW_OPENGL_PROFILE 131 
#define  GLFW_RESIZABLE 130 
#define  GLFW_TRANSPARENT_FRAMEBUFFER 129 
#define  GLFW_VISIBLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(GLFWwindow* handle, int attrib)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC8(window != NULL);

    FUNC0(0);

    switch (attrib)
    {
        case GLFW_FOCUSED:
            return FUNC3(window);
        case GLFW_ICONIFIED:
            return FUNC5(window);
        case GLFW_VISIBLE:
            return FUNC7(window);
        case GLFW_MAXIMIZED:
            return FUNC6(window);
        case GLFW_HOVERED:
            return FUNC4(window);
        case GLFW_FOCUS_ON_SHOW:
            return window->focusOnShow;
        case GLFW_TRANSPARENT_FRAMEBUFFER:
            return FUNC2(window);
        case GLFW_RESIZABLE:
            return window->resizable;
        case GLFW_DECORATED:
            return window->decorated;
        case GLFW_FLOATING:
            return window->floating;
        case GLFW_AUTO_ICONIFY:
            return window->autoIconify;
        case GLFW_CLIENT_API:
            return window->context.client;
        case GLFW_CONTEXT_CREATION_API:
            return window->context.source;
        case GLFW_CONTEXT_VERSION_MAJOR:
            return window->context.major;
        case GLFW_CONTEXT_VERSION_MINOR:
            return window->context.minor;
        case GLFW_CONTEXT_REVISION:
            return window->context.revision;
        case GLFW_CONTEXT_ROBUSTNESS:
            return window->context.robustness;
        case GLFW_OPENGL_FORWARD_COMPAT:
            return window->context.forward;
        case GLFW_OPENGL_DEBUG_CONTEXT:
            return window->context.debug;
        case GLFW_OPENGL_PROFILE:
            return window->context.profile;
        case GLFW_CONTEXT_RELEASE_BEHAVIOR:
            return window->context.release;
        case GLFW_CONTEXT_NO_ERROR:
            return window->context.noerror;
    }

    FUNC1(GLFW_INVALID_ENUM, "Invalid window attribute 0x%08X", attrib);
    return 0;
}