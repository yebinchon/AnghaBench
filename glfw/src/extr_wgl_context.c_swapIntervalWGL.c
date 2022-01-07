
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int interval; } ;
struct TYPE_8__ {TYPE_1__ wgl; } ;
struct TYPE_10__ {int monitor; TYPE_2__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_9__ {scalar_t__ EXT_swap_control; } ;
struct TYPE_11__ {TYPE_3__ wgl; int contextSlot; } ;
typedef scalar_t__ BOOL ;


 int DwmIsCompositionEnabled (scalar_t__*) ;
 scalar_t__ IsWindows8OrGreater () ;
 scalar_t__ IsWindowsVistaOrGreater () ;
 scalar_t__ SUCCEEDED (int ) ;
 TYPE_6__ _glfw ;
 TYPE_4__* _glfwPlatformGetTls (int *) ;
 int wglSwapIntervalEXT (int) ;

__attribute__((used)) static void swapIntervalWGL(int interval)
{
    _GLFWwindow* window = _glfwPlatformGetTls(&_glfw.contextSlot);

    window->context.wgl.interval = interval;

    if (!window->monitor)
    {
        if (IsWindowsVistaOrGreater())
        {

            BOOL enabled = IsWindows8OrGreater();



            if (enabled ||
                (SUCCEEDED(DwmIsCompositionEnabled(&enabled)) && enabled))
                interval = 0;
        }
    }

    if (_glfw.wgl.EXT_swap_control)
        wglSwapIntervalEXT(interval);
}
