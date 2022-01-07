
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_seat {int dummy; } ;
typedef enum wl_seat_capability { ____Placeholder_wl_seat_capability } wl_seat_capability ;
struct TYPE_3__ {int * keyboard; int * pointer; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 int WL_SEAT_CAPABILITY_KEYBOARD ;
 int WL_SEAT_CAPABILITY_POINTER ;
 TYPE_2__ _glfw ;
 int keyboardListener ;
 int pointerListener ;
 int wl_keyboard_add_listener (int *,int *,int *) ;
 int wl_keyboard_destroy (int *) ;
 int wl_pointer_add_listener (int *,int *,int *) ;
 int wl_pointer_destroy (int *) ;
 int * wl_seat_get_keyboard (struct wl_seat*) ;
 int * wl_seat_get_pointer (struct wl_seat*) ;

__attribute__((used)) static void seatHandleCapabilities(void* data,
                                   struct wl_seat* seat,
                                   enum wl_seat_capability caps)
{
    if ((caps & WL_SEAT_CAPABILITY_POINTER) && !_glfw.wl.pointer)
    {
        _glfw.wl.pointer = wl_seat_get_pointer(seat);
        wl_pointer_add_listener(_glfw.wl.pointer, &pointerListener, ((void*)0));
    }
    else if (!(caps & WL_SEAT_CAPABILITY_POINTER) && _glfw.wl.pointer)
    {
        wl_pointer_destroy(_glfw.wl.pointer);
        _glfw.wl.pointer = ((void*)0);
    }

    if ((caps & WL_SEAT_CAPABILITY_KEYBOARD) && !_glfw.wl.keyboard)
    {
        _glfw.wl.keyboard = wl_seat_get_keyboard(seat);
        wl_keyboard_add_listener(_glfw.wl.keyboard, &keyboardListener, ((void*)0));
    }
    else if (!(caps & WL_SEAT_CAPABILITY_KEYBOARD) && _glfw.wl.keyboard)
    {
        wl_keyboard_destroy(_glfw.wl.keyboard);
        _glfw.wl.keyboard = ((void*)0);
    }
}
