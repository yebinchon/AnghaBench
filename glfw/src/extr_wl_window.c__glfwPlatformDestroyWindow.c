
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_17__ {scalar_t__ surface; scalar_t__ toplevel; scalar_t__ decoration; } ;
struct TYPE_16__ {scalar_t__ buffer; } ;
struct TYPE_18__ {int monitors; int title; scalar_t__ surface; TYPE_4__ xdg; scalar_t__ native; TYPE_3__ decorations; scalar_t__ idleInhibitor; } ;
struct TYPE_15__ {int (* destroy ) (TYPE_6__*) ;} ;
struct TYPE_19__ {TYPE_5__ wl; TYPE_2__ context; } ;
typedef TYPE_6__ _GLFWwindow ;
struct TYPE_14__ {TYPE_6__* keyboardFocus; TYPE_6__* pointerFocus; } ;
struct TYPE_13__ {TYPE_1__ wl; } ;


 int GLFW_FALSE ;
 TYPE_12__ _glfw ;
 int _glfwInputCursorEnter (TYPE_6__*,int ) ;
 int _glfwInputWindowFocus (TYPE_6__*,int ) ;
 int destroyDecorations (TYPE_6__*) ;
 int free (int ) ;
 int stub1 (TYPE_6__*) ;
 int wl_buffer_destroy (scalar_t__) ;
 int wl_egl_window_destroy (scalar_t__) ;
 int wl_surface_destroy (scalar_t__) ;
 int xdg_surface_destroy (scalar_t__) ;
 int xdg_toplevel_destroy (scalar_t__) ;
 int zwp_idle_inhibitor_v1_destroy (scalar_t__) ;
 int zxdg_toplevel_decoration_v1_destroy (scalar_t__) ;

void _glfwPlatformDestroyWindow(_GLFWwindow* window)
{
    if (window == _glfw.wl.pointerFocus)
    {
        _glfw.wl.pointerFocus = ((void*)0);
        _glfwInputCursorEnter(window, GLFW_FALSE);
    }
    if (window == _glfw.wl.keyboardFocus)
    {
        _glfw.wl.keyboardFocus = ((void*)0);
        _glfwInputWindowFocus(window, GLFW_FALSE);
    }

    if (window->wl.idleInhibitor)
        zwp_idle_inhibitor_v1_destroy(window->wl.idleInhibitor);

    if (window->context.destroy)
        window->context.destroy(window);

    destroyDecorations(window);
    if (window->wl.xdg.decoration)
        zxdg_toplevel_decoration_v1_destroy(window->wl.xdg.decoration);

    if (window->wl.decorations.buffer)
        wl_buffer_destroy(window->wl.decorations.buffer);

    if (window->wl.native)
        wl_egl_window_destroy(window->wl.native);

    if (window->wl.xdg.toplevel)
        xdg_toplevel_destroy(window->wl.xdg.toplevel);

    if (window->wl.xdg.surface)
        xdg_surface_destroy(window->wl.xdg.surface);

    if (window->wl.surface)
        wl_surface_destroy(window->wl.surface);

    free(window->wl.title);
    free(window->wl.monitors);
}
