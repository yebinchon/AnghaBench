
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
struct TYPE_10__ {int focus; } ;
struct TYPE_12__ {int currentCursor; int hovered; TYPE_1__ decorations; } ;
struct TYPE_13__ {TYPE_3__ wl; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_11__ {TYPE_4__* pointerFocus; int serial; } ;
struct TYPE_14__ {TYPE_2__ wl; } ;


 int GLFW_TRUE ;
 TYPE_9__ _glfw ;
 int _glfwInputCursorEnter (TYPE_4__*,int ) ;
 int _glfwPlatformSetCursor (TYPE_4__*,int ) ;
 TYPE_4__* findWindowFromDecorationSurface (struct wl_surface*,int*) ;
 TYPE_4__* wl_surface_get_user_data (struct wl_surface*) ;

__attribute__((used)) static void pointerHandleEnter(void* data,
                               struct wl_pointer* pointer,
                               uint32_t serial,
                               struct wl_surface* surface,
                               wl_fixed_t sx,
                               wl_fixed_t sy)
{

    if (!surface)
        return;

    int focus = 0;
    _GLFWwindow* window = wl_surface_get_user_data(surface);
    if (!window)
    {
        window = findWindowFromDecorationSurface(surface, &focus);
        if (!window)
            return;
    }

    window->wl.decorations.focus = focus;
    _glfw.wl.serial = serial;
    _glfw.wl.pointerFocus = window;

    window->wl.hovered = GLFW_TRUE;

    _glfwPlatformSetCursor(window, window->wl.currentCursor);
    _glfwInputCursorEnter(window, GLFW_TRUE);
}
