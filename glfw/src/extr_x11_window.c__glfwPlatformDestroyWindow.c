
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ colormap; scalar_t__ handle; int * ic; } ;
struct TYPE_9__ {int (* destroy ) (TYPE_4__*) ;} ;
struct TYPE_12__ {TYPE_2__ x11; TYPE_1__ context; scalar_t__ monitor; } ;
typedef TYPE_4__ _GLFWwindow ;
typedef scalar_t__ Window ;
struct TYPE_11__ {int display; int context; TYPE_4__* disabledCursorWindow; } ;
struct TYPE_13__ {TYPE_3__ x11; } ;
typedef scalar_t__ Colormap ;


 int XDeleteContext (int ,scalar_t__,int ) ;
 int XDestroyIC (int *) ;
 int XDestroyWindow (int ,scalar_t__) ;
 int XFlush (int ) ;
 int XFreeColormap (int ,scalar_t__) ;
 int XUnmapWindow (int ,scalar_t__) ;
 TYPE_8__ _glfw ;
 int releaseMonitor (TYPE_4__*) ;
 int stub1 (TYPE_4__*) ;

void _glfwPlatformDestroyWindow(_GLFWwindow* window)
{
    if (_glfw.x11.disabledCursorWindow == window)
        _glfw.x11.disabledCursorWindow = ((void*)0);

    if (window->monitor)
        releaseMonitor(window);

    if (window->x11.ic)
    {
        XDestroyIC(window->x11.ic);
        window->x11.ic = ((void*)0);
    }

    if (window->context.destroy)
        window->context.destroy(window);

    if (window->x11.handle)
    {
        XDeleteContext(_glfw.x11.display, window->x11.handle, _glfw.x11.context);
        XUnmapWindow(_glfw.x11.display, window->x11.handle);
        XDestroyWindow(_glfw.x11.display, window->x11.handle);
        window->x11.handle = (Window) 0;
    }

    if (window->x11.colormap)
    {
        XFreeColormap(_glfw.x11.display, window->x11.colormap);
        window->x11.colormap = (Colormap) 0;
    }

    XFlush(_glfw.x11.display);
}
