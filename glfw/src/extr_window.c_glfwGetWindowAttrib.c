
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int client; int source; int major; int minor; int revision; int robustness; int forward; int debug; int profile; int release; int noerror; } ;
struct TYPE_10__ {int focusOnShow; int resizable; int decorated; int floating; int autoIconify; TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;
 int GLFW_INVALID_ENUM ;







 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;
 int _glfwInputError (int ,char*,int) ;
 int _glfwPlatformFramebufferTransparent (TYPE_2__*) ;
 int _glfwPlatformWindowFocused (TYPE_2__*) ;
 int _glfwPlatformWindowHovered (TYPE_2__*) ;
 int _glfwPlatformWindowIconified (TYPE_2__*) ;
 int _glfwPlatformWindowMaximized (TYPE_2__*) ;
 int _glfwPlatformWindowVisible (TYPE_2__*) ;
 int assert (int ) ;

int glfwGetWindowAttrib(GLFWwindow* handle, int attrib)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(0);

    switch (attrib)
    {
        case 138:
            return _glfwPlatformWindowFocused(window);
        case 135:
            return _glfwPlatformWindowIconified(window);
        case 128:
            return _glfwPlatformWindowVisible(window);
        case 134:
            return _glfwPlatformWindowMaximized(window);
        case 136:
            return _glfwPlatformWindowHovered(window);
        case 137:
            return window->focusOnShow;
        case 129:
            return _glfwPlatformFramebufferTransparent(window);
        case 130:
            return window->resizable;
        case 140:
            return window->decorated;
        case 139:
            return window->floating;
        case 149:
            return window->autoIconify;
        case 148:
            return window->context.client;
        case 147:
            return window->context.source;
        case 142:
            return window->context.major;
        case 141:
            return window->context.minor;
        case 144:
            return window->context.revision;
        case 143:
            return window->context.robustness;
        case 132:
            return window->context.forward;
        case 133:
            return window->context.debug;
        case 131:
            return window->context.profile;
        case 145:
            return window->context.release;
        case 146:
            return window->context.noerror;
    }

    _glfwInputError(GLFW_INVALID_ENUM, "Invalid window attribute 0x%08X", attrib);
    return 0;
}
