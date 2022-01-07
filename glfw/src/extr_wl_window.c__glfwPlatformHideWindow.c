
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * surface; int * toplevel; } ;
struct TYPE_5__ {int visible; TYPE_2__ xdg; } ;
struct TYPE_7__ {TYPE_1__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;


 int GLFW_FALSE ;
 int xdg_surface_destroy (int *) ;
 int xdg_toplevel_destroy (int *) ;

void _glfwPlatformHideWindow(_GLFWwindow* window)
{
    if (window->wl.xdg.toplevel)
    {
        xdg_toplevel_destroy(window->wl.xdg.toplevel);
        xdg_surface_destroy(window->wl.xdg.surface);
        window->wl.xdg.toplevel = ((void*)0);
        window->wl.xdg.surface = ((void*)0);
    }
    window->wl.visible = GLFW_FALSE;
}
