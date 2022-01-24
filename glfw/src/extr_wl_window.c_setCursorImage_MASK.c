#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct wl_surface {int dummy; } ;
struct wl_cursor_image {int delay; int hotspot_x; int hotspot_y; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct wl_cursor {struct wl_cursor_image** images; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_10__ {int tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_2__ it_value; } ;
struct TYPE_9__ {int scale; } ;
struct TYPE_12__ {TYPE_1__ wl; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_13__ {size_t currentImage; int xhot; int yhot; int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct wl_cursor* cursorHiDPI; struct wl_buffer* buffer; struct wl_cursor* cursor; } ;
typedef  TYPE_5__ _GLFWcursorWayland ;
struct TYPE_11__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  pointer; int /*<<< orphan*/  cursorTimerfd; struct wl_surface* cursorSurface; } ;
struct TYPE_14__ {TYPE_3__ wl; } ;

/* Variables and functions */
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 
 struct wl_buffer* FUNC1 (struct wl_cursor_image*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wl_surface*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wl_surface*,struct wl_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wl_surface*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl_surface*,int) ; 

__attribute__((used)) static void FUNC7(_GLFWwindow* window,
                           _GLFWcursorWayland* cursorWayland)
{
    struct itimerspec timer = {};
    struct wl_cursor* wlCursor = cursorWayland->cursor;
    struct wl_cursor_image* image;
    struct wl_buffer* buffer;
    struct wl_surface* surface = _glfw.wl.cursorSurface;
    int scale = 1;

    if (!wlCursor)
        buffer = cursorWayland->buffer;
    else
    {
        if (window->wl.scale > 1 && cursorWayland->cursorHiDPI)
        {
            wlCursor = cursorWayland->cursorHiDPI;
            scale = 2;
        }

        image = wlCursor->images[cursorWayland->currentImage];
        buffer = FUNC1(image);
        if (!buffer)
            return;

        timer.it_value.tv_sec = image->delay / 1000;
        timer.it_value.tv_nsec = (image->delay % 1000) * 1000000;
        FUNC0(_glfw.wl.cursorTimerfd, 0, &timer, NULL);

        cursorWayland->width = image->width;
        cursorWayland->height = image->height;
        cursorWayland->xhot = image->hotspot_x;
        cursorWayland->yhot = image->hotspot_y;
    }

    FUNC2(_glfw.wl.pointer, _glfw.wl.serial,
                          surface,
                          cursorWayland->xhot / scale,
                          cursorWayland->yhot / scale);
    FUNC6(surface, scale);
    FUNC3(surface, buffer, 0, 0);
    FUNC5(surface, 0, 0,
                      cursorWayland->width, cursorWayland->height);
    FUNC4(surface);
}