
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int serverSide; } ;
struct TYPE_11__ {scalar_t__ toplevel; } ;
struct TYPE_14__ {TYPE_3__ decorations; TYPE_1__ xdg; } ;
struct TYPE_15__ {TYPE_4__ wl; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_12__ {int output; } ;
struct TYPE_16__ {TYPE_2__ wl; } ;
typedef TYPE_6__ _GLFWmonitor ;


 int GLFW_TRUE ;
 int destroyDecorations (TYPE_5__*) ;
 int setIdleInhibitor (TYPE_5__*,int ) ;
 int xdg_toplevel_set_fullscreen (scalar_t__,int ) ;

__attribute__((used)) static void setFullscreen(_GLFWwindow* window, _GLFWmonitor* monitor,
                          int refreshRate)
{
    if (window->wl.xdg.toplevel)
    {
        xdg_toplevel_set_fullscreen(
            window->wl.xdg.toplevel,
            monitor->wl.output);
    }
    setIdleInhibitor(window, GLFW_TRUE);
    if (!window->wl.decorations.serverSide)
        destroyDecorations(window);
}
