#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ _GLFWwndconfig ;
struct TYPE_13__ {int scale; int /*<<< orphan*/  transparent; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  native; int /*<<< orphan*/  surface; } ;
struct TYPE_15__ {TYPE_2__ wl; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_12__ {int /*<<< orphan*/  compositor; } ;
struct TYPE_11__ {TYPE_1__ wl; } ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 TYPE_10__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  surfaceListener ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static GLFWbool FUNC5(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig)
{
    window->wl.surface = FUNC1(_glfw.wl.compositor);
    if (!window->wl.surface)
        return GLFW_FALSE;

    FUNC3(window->wl.surface,
                            &surfaceListener,
                            window);

    FUNC4(window->wl.surface, window);

    window->wl.native = FUNC2(window->wl.surface,
                                             wndconfig->width,
                                             wndconfig->height);
    if (!window->wl.native)
        return GLFW_FALSE;

    window->wl.width = wndconfig->width;
    window->wl.height = wndconfig->height;
    window->wl.scale = 1;

    if (!window->wl.transparent)
        FUNC0(window);

    return GLFW_TRUE;
}