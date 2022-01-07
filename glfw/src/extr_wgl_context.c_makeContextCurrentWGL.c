
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handle; int * dc; } ;
struct TYPE_8__ {TYPE_1__ wgl; } ;
struct TYPE_9__ {TYPE_2__ context; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_10__ {int contextSlot; } ;


 int GLFW_PLATFORM_ERROR ;
 TYPE_6__ _glfw ;
 int _glfwInputErrorWin32 (int ,char*) ;
 int _glfwPlatformSetTls (int *,TYPE_3__*) ;
 scalar_t__ wglMakeCurrent (int *,int *) ;

__attribute__((used)) static void makeContextCurrentWGL(_GLFWwindow* window)
{
    if (window)
    {
        if (wglMakeCurrent(window->context.wgl.dc, window->context.wgl.handle))
            _glfwPlatformSetTls(&_glfw.contextSlot, window);
        else
        {
            _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                                 "WGL: Failed to make context current");
            _glfwPlatformSetTls(&_glfw.contextSlot, ((void*)0));
        }
    }
    else
    {
        if (!wglMakeCurrent(((void*)0), ((void*)0)))
        {
            _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                                 "WGL: Failed to clear current context");
        }

        _glfwPlatformSetTls(&_glfw.contextSlot, ((void*)0));
    }
}
