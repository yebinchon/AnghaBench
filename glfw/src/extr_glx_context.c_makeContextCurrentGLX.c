
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * handle; int window; } ;
struct TYPE_9__ {TYPE_1__ glx; } ;
struct TYPE_11__ {TYPE_2__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_10__ {int display; } ;
struct TYPE_12__ {int contextSlot; TYPE_3__ x11; } ;


 int GLFW_PLATFORM_ERROR ;
 int None ;
 TYPE_7__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformSetTls (int *,TYPE_4__*) ;
 int glXMakeCurrent (int ,int ,int *) ;

__attribute__((used)) static void makeContextCurrentGLX(_GLFWwindow* window)
{
    if (window)
    {
        if (!glXMakeCurrent(_glfw.x11.display,
                            window->context.glx.window,
                            window->context.glx.handle))
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "GLX: Failed to make context current");
            return;
        }
    }
    else
    {
        if (!glXMakeCurrent(_glfw.x11.display, None, ((void*)0)))
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "GLX: Failed to clear current context");
            return;
        }
    }

    _glfwPlatformSetTls(&_glfw.contextSlot, window);
}
