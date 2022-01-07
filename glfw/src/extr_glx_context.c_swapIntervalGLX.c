
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int window; } ;
struct TYPE_11__ {TYPE_3__ glx; } ;
struct TYPE_12__ {TYPE_4__ context; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_8__ {int (* SwapIntervalSGI ) (int) ;scalar_t__ SGI_swap_control; int (* SwapIntervalMESA ) (int) ;scalar_t__ MESA_swap_control; int (* SwapIntervalEXT ) (int ,int ,int) ;scalar_t__ EXT_swap_control; } ;
struct TYPE_9__ {int display; } ;
struct TYPE_13__ {TYPE_1__ glx; TYPE_2__ x11; int contextSlot; } ;


 TYPE_7__ _glfw ;
 TYPE_5__* _glfwPlatformGetTls (int *) ;
 int stub1 (int ,int ,int) ;
 int stub2 (int) ;
 int stub3 (int) ;

__attribute__((used)) static void swapIntervalGLX(int interval)
{
    _GLFWwindow* window = _glfwPlatformGetTls(&_glfw.contextSlot);

    if (_glfw.glx.EXT_swap_control)
    {
        _glfw.glx.SwapIntervalEXT(_glfw.x11.display,
                                  window->context.glx.window,
                                  interval);
    }
    else if (_glfw.glx.MESA_swap_control)
        _glfw.glx.SwapIntervalMESA(interval);
    else if (_glfw.glx.SGI_swap_control)
    {
        if (interval > 0)
            _glfw.glx.SwapIntervalSGI(interval);
    }
}
