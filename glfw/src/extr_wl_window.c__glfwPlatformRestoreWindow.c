
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ toplevel; } ;
struct TYPE_7__ {scalar_t__ maximized; TYPE_1__ xdg; } ;
struct TYPE_8__ {TYPE_2__ wl; scalar_t__ monitor; } ;
typedef TYPE_3__ _GLFWwindow ;


 scalar_t__ GLFW_FALSE ;
 int _glfwInputWindowMonitor (TYPE_3__*,int *) ;
 int xdg_toplevel_unset_fullscreen (scalar_t__) ;
 int xdg_toplevel_unset_maximized (scalar_t__) ;

void _glfwPlatformRestoreWindow(_GLFWwindow* window)
{
    if (window->wl.xdg.toplevel)
    {
        if (window->monitor)
            xdg_toplevel_unset_fullscreen(window->wl.xdg.toplevel);
        if (window->wl.maximized)
            xdg_toplevel_unset_maximized(window->wl.xdg.toplevel);


    }
    _glfwInputWindowMonitor(window, ((void*)0));
    window->wl.maximized = GLFW_FALSE;
}
