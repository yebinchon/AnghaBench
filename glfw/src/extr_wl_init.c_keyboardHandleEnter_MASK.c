#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_keyboard {int dummy; } ;
struct wl_array {int dummy; } ;
typedef  int /*<<< orphan*/  _GLFWwindow ;
struct TYPE_3__ {int /*<<< orphan*/ * keyboardFocus; int /*<<< orphan*/  serial; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_TRUE ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct wl_surface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct wl_surface*) ; 

__attribute__((used)) static void FUNC3(void* data,
                                struct wl_keyboard* keyboard,
                                uint32_t serial,
                                struct wl_surface* surface,
                                struct wl_array* keys)
{
    // Happens in the case we just destroyed the surface.
    if (!surface)
        return;

    _GLFWwindow* window = FUNC2(surface);
    if (!window)
    {
        window = FUNC1(surface, NULL);
        if (!window)
            return;
    }

    _glfw.wl.serial = serial;
    _glfw.wl.keyboardFocus = window;
    FUNC0(window, GLFW_TRUE);
}