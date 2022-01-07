
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct wl_cursor {int dummy; } ;
struct TYPE_16__ {scalar_t__ focus; } ;
struct TYPE_17__ {TYPE_1__ decorations; TYPE_6__* currentCursor; } ;
struct TYPE_19__ {scalar_t__ cursorMode; TYPE_2__ wl; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_20__ {int member_7; int member_6; int member_5; int member_4; int member_3; int * member_2; struct wl_cursor* member_1; struct wl_cursor* member_0; } ;
typedef TYPE_5__ _GLFWcursorWayland ;
struct TYPE_21__ {TYPE_5__ wl; } ;
typedef TYPE_6__ _GLFWcursor ;
struct TYPE_18__ {int serial; int pointer; scalar_t__ cursorThemeHiDPI; scalar_t__ cursorTheme; TYPE_4__* pointerFocus; } ;
struct TYPE_15__ {TYPE_3__ wl; } ;


 scalar_t__ GLFW_CURSOR_DISABLED ;
 scalar_t__ GLFW_CURSOR_HIDDEN ;
 scalar_t__ GLFW_CURSOR_NORMAL ;
 int GLFW_PLATFORM_ERROR ;
 TYPE_14__ _glfw ;
 int _glfwInputError (int ,char*) ;
 scalar_t__ isPointerLocked (TYPE_4__*) ;
 int lockPointer (TYPE_4__*) ;
 scalar_t__ mainWindow ;
 int setCursorImage (TYPE_4__*,TYPE_5__*) ;
 int unlockPointer (TYPE_4__*) ;
 struct wl_cursor* wl_cursor_theme_get_cursor (scalar_t__,char*) ;
 int wl_pointer_set_cursor (int ,int ,int *,int ,int ) ;

void _glfwPlatformSetCursor(_GLFWwindow* window, _GLFWcursor* cursor)
{
    struct wl_cursor* defaultCursor;
    struct wl_cursor* defaultCursorHiDPI = ((void*)0);

    if (!_glfw.wl.pointer)
        return;

    window->wl.currentCursor = cursor;



    if (window != _glfw.wl.pointerFocus || window->wl.decorations.focus != mainWindow)
        return;


    if (window->cursorMode != GLFW_CURSOR_DISABLED && isPointerLocked(window))
        unlockPointer(window);

    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (cursor)
            setCursorImage(window, &cursor->wl);
        else
        {
            defaultCursor = wl_cursor_theme_get_cursor(_glfw.wl.cursorTheme,
                                                       "left_ptr");
            if (!defaultCursor)
            {
                _glfwInputError(GLFW_PLATFORM_ERROR,
                                "Wayland: Standard cursor not found");
                return;
            }
            if (_glfw.wl.cursorThemeHiDPI)
                defaultCursorHiDPI =
                    wl_cursor_theme_get_cursor(_glfw.wl.cursorThemeHiDPI,
                                               "left_ptr");
            _GLFWcursorWayland cursorWayland = {
                defaultCursor,
                defaultCursorHiDPI,
                ((void*)0),
                0, 0,
                0, 0,
                0
            };
            setCursorImage(window, &cursorWayland);
        }
    }
    else if (window->cursorMode == GLFW_CURSOR_DISABLED)
    {
        if (!isPointerLocked(window))
            lockPointer(window);
    }
    else if (window->cursorMode == GLFW_CURSOR_HIDDEN)
    {
        wl_pointer_set_cursor(_glfw.wl.pointer, _glfw.wl.serial, ((void*)0), 0, 0);
    }
}
