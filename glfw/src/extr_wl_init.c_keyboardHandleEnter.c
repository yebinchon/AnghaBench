
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_keyboard {int dummy; } ;
struct wl_array {int dummy; } ;
typedef int _GLFWwindow ;
struct TYPE_3__ {int * keyboardFocus; int serial; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 int GLFW_TRUE ;
 TYPE_2__ _glfw ;
 int _glfwInputWindowFocus (int *,int ) ;
 int * findWindowFromDecorationSurface (struct wl_surface*,int *) ;
 int * wl_surface_get_user_data (struct wl_surface*) ;

__attribute__((used)) static void keyboardHandleEnter(void* data,
                                struct wl_keyboard* keyboard,
                                uint32_t serial,
                                struct wl_surface* surface,
                                struct wl_array* keys)
{

    if (!surface)
        return;

    _GLFWwindow* window = wl_surface_get_user_data(surface);
    if (!window)
    {
        window = findWindowFromDecorationSurface(surface, ((void*)0));
        if (!window)
            return;
    }

    _glfw.wl.serial = serial;
    _glfw.wl.keyboardFocus = window;
    _glfwInputWindowFocus(window, GLFW_TRUE);
}
