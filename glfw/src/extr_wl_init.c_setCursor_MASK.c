#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wl_surface {int dummy; } ;
struct wl_cursor_theme {int dummy; } ;
struct wl_cursor_image {int hotspot_x; int hotspot_y; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct wl_cursor {struct wl_cursor_image** images; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_6__ {int scale; } ;
struct TYPE_8__ {TYPE_1__ wl; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  pointer; struct wl_cursor_theme* cursorThemeHiDPI; struct wl_cursor_theme* cursorTheme; struct wl_surface* cursorSurface; } ;
struct TYPE_9__ {TYPE_2__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wl_buffer* FUNC1 (struct wl_cursor_image*) ; 
 struct wl_cursor* FUNC2 (struct wl_cursor_theme*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wl_surface*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wl_surface*,struct wl_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wl_surface*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_surface*,int) ; 

__attribute__((used)) static void FUNC8(_GLFWwindow* window, const char* name)
{
    struct wl_buffer* buffer;
    struct wl_cursor* cursor;
    struct wl_cursor_image* image;
    struct wl_surface* surface = _glfw.wl.cursorSurface;
    struct wl_cursor_theme* theme = _glfw.wl.cursorTheme;
    int scale = 1;

    if (window->wl.scale > 1 && _glfw.wl.cursorThemeHiDPI)
    {
        // We only support up to scale=2 for now, since libwayland-cursor
        // requires us to load a different theme for each size.
        scale = 2;
        theme = _glfw.wl.cursorThemeHiDPI;
    }

    cursor = FUNC2(theme, name);
    if (!cursor)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Standard cursor not found");
        return;
    }
    // TODO: handle animated cursors too.
    image = cursor->images[0];

    if (!image)
        return;

    buffer = FUNC1(image);
    if (!buffer)
        return;
    FUNC3(_glfw.wl.pointer, _glfw.wl.serial,
                          surface,
                          image->hotspot_x / scale,
                          image->hotspot_y / scale);
    FUNC7(surface, scale);
    FUNC4(surface, buffer, 0, 0);
    FUNC6(surface, 0, 0,
                      image->width, image->height);
    FUNC5(surface);
}