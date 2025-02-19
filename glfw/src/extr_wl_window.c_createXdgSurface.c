
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


struct TYPE_16__ {int toplevel; int surface; } ;
struct TYPE_17__ {int surface; TYPE_3__ xdg; scalar_t__ maximized; scalar_t__ title; } ;
struct TYPE_19__ {scalar_t__ minwidth; scalar_t__ minheight; scalar_t__ maxwidth; scalar_t__ maxheight; TYPE_4__ wl; TYPE_2__* monitor; } ;
typedef TYPE_6__ _GLFWwindow ;
struct TYPE_18__ {int display; int wmBase; } ;
struct TYPE_14__ {int output; } ;
struct TYPE_15__ {TYPE_1__ wl; } ;
struct TYPE_13__ {TYPE_5__ wl; } ;
typedef int GLFWbool ;


 scalar_t__ GLFW_DONT_CARE ;
 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 TYPE_12__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int setIdleInhibitor (TYPE_6__*,int ) ;
 int setXdgDecorations (TYPE_6__*) ;
 int wl_display_roundtrip (int ) ;
 int wl_surface_commit (int ) ;
 int xdgSurfaceListener ;
 int xdgToplevelListener ;
 int xdg_surface_add_listener (int ,int *,TYPE_6__*) ;
 int xdg_surface_get_toplevel (int ) ;
 int xdg_toplevel_add_listener (int ,int *,TYPE_6__*) ;
 int xdg_toplevel_set_fullscreen (int ,int ) ;
 int xdg_toplevel_set_max_size (int ,scalar_t__,scalar_t__) ;
 int xdg_toplevel_set_maximized (int ) ;
 int xdg_toplevel_set_min_size (int ,scalar_t__,scalar_t__) ;
 int xdg_toplevel_set_title (int ,scalar_t__) ;
 int xdg_wm_base_get_xdg_surface (int ,int ) ;

__attribute__((used)) static GLFWbool createXdgSurface(_GLFWwindow* window)
{
    window->wl.xdg.surface = xdg_wm_base_get_xdg_surface(_glfw.wl.wmBase,
                                                         window->wl.surface);
    if (!window->wl.xdg.surface)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: xdg-surface creation failed");
        return GLFW_FALSE;
    }

    xdg_surface_add_listener(window->wl.xdg.surface,
                             &xdgSurfaceListener,
                             window);

    window->wl.xdg.toplevel = xdg_surface_get_toplevel(window->wl.xdg.surface);
    if (!window->wl.xdg.toplevel)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: xdg-toplevel creation failed");
        return GLFW_FALSE;
    }

    xdg_toplevel_add_listener(window->wl.xdg.toplevel,
                              &xdgToplevelListener,
                              window);

    if (window->wl.title)
        xdg_toplevel_set_title(window->wl.xdg.toplevel, window->wl.title);

    if (window->minwidth != GLFW_DONT_CARE && window->minheight != GLFW_DONT_CARE)
        xdg_toplevel_set_min_size(window->wl.xdg.toplevel,
                                  window->minwidth, window->minheight);
    if (window->maxwidth != GLFW_DONT_CARE && window->maxheight != GLFW_DONT_CARE)
        xdg_toplevel_set_max_size(window->wl.xdg.toplevel,
                                  window->maxwidth, window->maxheight);

    if (window->monitor)
    {
        xdg_toplevel_set_fullscreen(window->wl.xdg.toplevel,
                                    window->monitor->wl.output);
        setIdleInhibitor(window, GLFW_TRUE);
    }
    else if (window->wl.maximized)
    {
        xdg_toplevel_set_maximized(window->wl.xdg.toplevel);
        setIdleInhibitor(window, GLFW_FALSE);
        setXdgDecorations(window);
    }
    else
    {
        setIdleInhibitor(window, GLFW_FALSE);
        setXdgDecorations(window);
    }

    wl_surface_commit(window->wl.surface);
    wl_display_roundtrip(_glfw.wl.display);

    return GLFW_TRUE;
}
