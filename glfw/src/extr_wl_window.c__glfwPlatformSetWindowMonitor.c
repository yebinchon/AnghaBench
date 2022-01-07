
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {scalar_t__ toplevel; } ;
struct TYPE_13__ {TYPE_1__ xdg; } ;
struct TYPE_15__ {TYPE_2__ wl; } ;
typedef TYPE_4__ _GLFWwindow ;
typedef int _GLFWmonitor ;
struct TYPE_14__ {int decorationManager; } ;
struct TYPE_11__ {TYPE_3__ wl; } ;


 int GLFW_FALSE ;
 TYPE_10__ _glfw ;
 int _glfwInputWindowMonitor (TYPE_4__*,int *) ;
 int createDecorations (TYPE_4__*) ;
 int setFullscreen (TYPE_4__*,int *,int) ;
 int setIdleInhibitor (TYPE_4__*,int ) ;
 int xdg_toplevel_unset_fullscreen (scalar_t__) ;

void _glfwPlatformSetWindowMonitor(_GLFWwindow* window,
                                   _GLFWmonitor* monitor,
                                   int xpos, int ypos,
                                   int width, int height,
                                   int refreshRate)
{
    if (monitor)
    {
        setFullscreen(window, monitor, refreshRate);
    }
    else
    {
        if (window->wl.xdg.toplevel)
            xdg_toplevel_unset_fullscreen(window->wl.xdg.toplevel);
        setIdleInhibitor(window, GLFW_FALSE);
        if (!_glfw.wl.decorationManager)
            createDecorations(window);
    }
    _glfwInputWindowMonitor(window, monitor);
}
