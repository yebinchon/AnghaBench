
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct wl_surface {int dummy; } ;
struct TYPE_13__ {struct wl_surface* surface; } ;
struct TYPE_12__ {struct wl_surface* surface; } ;
struct TYPE_11__ {struct wl_surface* surface; } ;
struct TYPE_10__ {struct wl_surface* surface; } ;
struct TYPE_14__ {TYPE_4__ bottom; TYPE_3__ right; TYPE_2__ left; TYPE_1__ top; } ;
struct TYPE_15__ {TYPE_5__ decorations; } ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_6__ wl; } ;
typedef TYPE_7__ _GLFWwindow ;
struct TYPE_17__ {TYPE_7__* windowListHead; } ;


 TYPE_9__ _glfw ;
 int bottomDecoration ;
 int leftDecoration ;
 int rightDecoration ;
 int topDecoration ;

__attribute__((used)) static _GLFWwindow* findWindowFromDecorationSurface(struct wl_surface* surface,
                                                    int* which)
{
    int focus;
    _GLFWwindow* window = _glfw.windowListHead;
    if (!which)
        which = &focus;
    while (window)
    {
        if (surface == window->wl.decorations.top.surface)
        {
            *which = topDecoration;
            break;
        }
        if (surface == window->wl.decorations.left.surface)
        {
            *which = leftDecoration;
            break;
        }
        if (surface == window->wl.decorations.right.surface)
        {
            *which = rightDecoration;
            break;
        }
        if (surface == window->wl.decorations.bottom.surface)
        {
            *which = bottomDecoration;
            break;
        }
        window = window->next;
    }
    return window;
}
