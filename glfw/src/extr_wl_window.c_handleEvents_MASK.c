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
typedef  scalar_t__ uint64_t ;
struct wl_display {int dummy; } ;
struct pollfd {int member_1; int revents; int /*<<< orphan*/  member_0; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  repeats ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {int /*<<< orphan*/  modifiers; } ;
struct TYPE_7__ {int /*<<< orphan*/  pointerFocus; int /*<<< orphan*/  cursorTimerfd; TYPE_1__ xkb; int /*<<< orphan*/  keyboardLastScancode; int /*<<< orphan*/  keyboardLastKey; int /*<<< orphan*/  keyboardFocus; int /*<<< orphan*/  timerfd; struct wl_display* display; } ;
struct TYPE_9__ {TYPE_2__ wl; TYPE_3__* windowListHead; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  GLFW_REPEAT ; 
 int POLLIN ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pollfd*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl_display*) ; 
 scalar_t__ FUNC7 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl_display*) ; 
 scalar_t__ FUNC9 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC10 (struct wl_display*) ; 

__attribute__((used)) static void FUNC11(int timeout)
{
    struct wl_display* display = _glfw.wl.display;
    struct pollfd fds[] = {
        { FUNC8(display), POLLIN },
        { _glfw.wl.timerfd, POLLIN },
        { _glfw.wl.cursorTimerfd, POLLIN },
    };
    ssize_t read_ret;
    uint64_t repeats, i;

    while (FUNC9(display) != 0)
        FUNC6(display);

    // If an error different from EAGAIN happens, we have likely been
    // disconnected from the Wayland session, try to handle that the best we
    // can.
    if (FUNC7(display) < 0 && errno != EAGAIN)
    {
        _GLFWwindow* window = _glfw.windowListHead;
        while (window)
        {
            FUNC1(window);
            window = window->next;
        }
        FUNC5(display);
        return;
    }

    if (FUNC3(fds, 3, timeout) > 0)
    {
        if (fds[0].revents & POLLIN)
        {
            FUNC10(display);
            FUNC6(display);
        }
        else
        {
            FUNC5(display);
        }

        if (fds[1].revents & POLLIN)
        {
            read_ret = FUNC4(_glfw.wl.timerfd, &repeats, sizeof(repeats));
            if (read_ret != 8)
                return;

            for (i = 0; i < repeats; ++i)
                FUNC0(_glfw.wl.keyboardFocus, _glfw.wl.keyboardLastKey,
                              _glfw.wl.keyboardLastScancode, GLFW_REPEAT,
                              _glfw.wl.xkb.modifiers);
        }

        if (fds[2].revents & POLLIN)
        {
            read_ret = FUNC4(_glfw.wl.cursorTimerfd, &repeats, sizeof(repeats));
            if (read_ret != 8)
                return;

            FUNC2(_glfw.wl.pointerFocus);
        }
    }
    else
    {
        FUNC5(display);
    }
}