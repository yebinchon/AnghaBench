
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
struct TYPE_6__ {int hovered; } ;
struct TYPE_8__ {TYPE_1__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {TYPE_3__* pointerFocus; int serial; } ;
struct TYPE_9__ {TYPE_2__ wl; } ;


 int GLFW_FALSE ;
 TYPE_5__ _glfw ;
 int _glfwInputCursorEnter (TYPE_3__*,int ) ;

__attribute__((used)) static void pointerHandleLeave(void* data,
                               struct wl_pointer* pointer,
                               uint32_t serial,
                               struct wl_surface* surface)
{
    _GLFWwindow* window = _glfw.wl.pointerFocus;

    if (!window)
        return;

    window->wl.hovered = GLFW_FALSE;

    _glfw.wl.serial = serial;
    _glfw.wl.pointerFocus = ((void*)0);
    _glfwInputCursorEnter(window, GLFW_FALSE);
}
