
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct wl_pointer {int dummy; } ;
struct TYPE_10__ {int focus; } ;
struct TYPE_9__ {scalar_t__ toplevel; } ;
struct TYPE_11__ {TYPE_2__ decorations; scalar_t__ cursorPosY; scalar_t__ cursorPosX; TYPE_1__ xdg; scalar_t__ width; } ;
struct TYPE_14__ {TYPE_3__ wl; } ;
typedef TYPE_6__ _GLFWwindow ;
struct TYPE_12__ {int modifiers; } ;
struct TYPE_13__ {TYPE_4__ xkb; scalar_t__ serial; int seat; TYPE_6__* pointerFocus; } ;
struct TYPE_15__ {TYPE_5__ wl; } ;


 scalar_t__ BTN_LEFT ;
 scalar_t__ BTN_RIGHT ;
 int GLFW_PRESS ;
 int GLFW_RELEASE ;
 scalar_t__ WL_POINTER_BUTTON_STATE_PRESSED ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_LEFT ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_NONE ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_RIGHT ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_TOP ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT ;
 scalar_t__ XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT ;
 scalar_t__ _GLFW_DECORATION_WIDTH ;
 TYPE_8__ _glfw ;
 int _glfwInputMouseClick (TYPE_6__*,int,int ,int ) ;
 int assert (int ) ;





 int xdg_toplevel_move (scalar_t__,int ,scalar_t__) ;
 int xdg_toplevel_resize (scalar_t__,int ,scalar_t__,scalar_t__) ;
 int xdg_toplevel_show_window_menu (scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void pointerHandleButton(void* data,
                                struct wl_pointer* pointer,
                                uint32_t serial,
                                uint32_t time,
                                uint32_t button,
                                uint32_t state)
{
    _GLFWwindow* window = _glfw.wl.pointerFocus;
    int glfwButton;
    uint32_t edges = XDG_TOPLEVEL_RESIZE_EDGE_NONE;

    if (!window)
        return;
    if (button == BTN_LEFT)
    {
        switch (window->wl.decorations.focus)
        {
            case 130:
                break;
            case 128:
                if (window->wl.cursorPosY < _GLFW_DECORATION_WIDTH)
                    edges = XDG_TOPLEVEL_RESIZE_EDGE_TOP;
                else
                {
                    xdg_toplevel_move(window->wl.xdg.toplevel, _glfw.wl.seat, serial);
                }
                break;
            case 131:
                if (window->wl.cursorPosY < _GLFW_DECORATION_WIDTH)
                    edges = XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT;
                else
                    edges = XDG_TOPLEVEL_RESIZE_EDGE_LEFT;
                break;
            case 129:
                if (window->wl.cursorPosY < _GLFW_DECORATION_WIDTH)
                    edges = XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT;
                else
                    edges = XDG_TOPLEVEL_RESIZE_EDGE_RIGHT;
                break;
            case 132:
                if (window->wl.cursorPosX < _GLFW_DECORATION_WIDTH)
                    edges = XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT;
                else if (window->wl.cursorPosX > window->wl.width + _GLFW_DECORATION_WIDTH)
                    edges = XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT;
                else
                    edges = XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM;
                break;
            default:
                assert(0);
        }
        if (edges != XDG_TOPLEVEL_RESIZE_EDGE_NONE)
        {
            xdg_toplevel_resize(window->wl.xdg.toplevel, _glfw.wl.seat,
                                serial, edges);
        }
    }
    else if (button == BTN_RIGHT)
    {
        if (window->wl.decorations.focus != 130 && window->wl.xdg.toplevel)
        {
            xdg_toplevel_show_window_menu(window->wl.xdg.toplevel,
                                          _glfw.wl.seat, serial,
                                          window->wl.cursorPosX,
                                          window->wl.cursorPosY);
            return;
        }
    }


    if (window->wl.decorations.focus != 130)
        return;

    _glfw.wl.serial = serial;



    glfwButton = button - BTN_LEFT;

    _glfwInputMouseClick(window,
                         glfwButton,
                         state == WL_POINTER_BUTTON_STATE_PRESSED
                                ? GLFW_PRESS
                                : GLFW_RELEASE,
                         _glfw.wl.xkb.modifiers);
}
