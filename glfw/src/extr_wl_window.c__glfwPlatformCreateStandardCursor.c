
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wl_cursor {int dummy; } ;
struct TYPE_7__ {struct wl_cursor* cursorHiDPI; scalar_t__ currentImage; struct wl_cursor* cursor; } ;
struct TYPE_8__ {TYPE_2__ wl; } ;
typedef TYPE_3__ _GLFWcursor ;
struct TYPE_6__ {scalar_t__ cursorThemeHiDPI; scalar_t__ cursorTheme; } ;
struct TYPE_9__ {TYPE_1__ wl; } ;


 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 TYPE_5__ _glfw ;
 int _glfwInputError (int ,char*,int ) ;
 int translateCursorShape (int) ;
 struct wl_cursor* wl_cursor_theme_get_cursor (scalar_t__,int ) ;

int _glfwPlatformCreateStandardCursor(_GLFWcursor* cursor, int shape)
{
    struct wl_cursor* standardCursor;

    standardCursor = wl_cursor_theme_get_cursor(_glfw.wl.cursorTheme,
                                                translateCursorShape(shape));
    if (!standardCursor)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Standard cursor \"%s\" not found",
                        translateCursorShape(shape));
        return GLFW_FALSE;
    }

    cursor->wl.cursor = standardCursor;
    cursor->wl.currentImage = 0;

    if (_glfw.wl.cursorThemeHiDPI)
    {
        standardCursor = wl_cursor_theme_get_cursor(_glfw.wl.cursorThemeHiDPI,
                                                    translateCursorShape(shape));
        cursor->wl.cursorHiDPI = standardCursor;
    }

    return GLFW_TRUE;
}
