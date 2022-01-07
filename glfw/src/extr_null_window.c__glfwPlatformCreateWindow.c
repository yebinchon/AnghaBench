
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int _GLFWwndconfig ;
typedef int _GLFWwindow ;
typedef int _GLFWfbconfig ;
struct TYPE_4__ {scalar_t__ client; scalar_t__ source; } ;
typedef TYPE_1__ _GLFWctxconfig ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_FALSE ;
 scalar_t__ GLFW_NATIVE_CONTEXT_API ;
 scalar_t__ GLFW_NO_API ;
 scalar_t__ GLFW_OSMESA_CONTEXT_API ;
 int GLFW_TRUE ;
 int _glfwCreateContextOSMesa (int *,TYPE_1__ const*,int const*) ;
 int _glfwInitOSMesa () ;
 int _glfwInputError (int ,char*) ;
 int createNativeWindow (int *,int const*) ;

int _glfwPlatformCreateWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (!createNativeWindow(window, wndconfig))
        return GLFW_FALSE;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (ctxconfig->source == GLFW_NATIVE_CONTEXT_API ||
            ctxconfig->source == GLFW_OSMESA_CONTEXT_API)
        {
            if (!_glfwInitOSMesa())
                return GLFW_FALSE;
            if (!_glfwCreateContextOSMesa(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
        else
        {
            _glfwInputError(GLFW_API_UNAVAILABLE, "Null: EGL not available");
            return GLFW_FALSE;
        }
    }

    return GLFW_TRUE;
}
