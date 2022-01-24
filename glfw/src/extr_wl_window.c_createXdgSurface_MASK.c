#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  toplevel; int /*<<< orphan*/  surface; } ;
struct TYPE_17__ {int /*<<< orphan*/  surface; TYPE_3__ xdg; scalar_t__ maximized; scalar_t__ title; } ;
struct TYPE_19__ {scalar_t__ minwidth; scalar_t__ minheight; scalar_t__ maxwidth; scalar_t__ maxheight; TYPE_4__ wl; TYPE_2__* monitor; } ;
typedef  TYPE_6__ _GLFWwindow ;
struct TYPE_18__ {int /*<<< orphan*/  display; int /*<<< orphan*/  wmBase; } ;
struct TYPE_14__ {int /*<<< orphan*/  output; } ;
struct TYPE_15__ {TYPE_1__ wl; } ;
struct TYPE_13__ {TYPE_5__ wl; } ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 scalar_t__ GLFW_DONT_CARE ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 TYPE_12__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdgSurfaceListener ; 
 int /*<<< orphan*/  xdgToplevelListener ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GLFWbool FUNC14(_GLFWwindow* window)
{
    window->wl.xdg.surface = FUNC13(_glfw.wl.wmBase,
                                                         window->wl.surface);
    if (!window->wl.xdg.surface)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: xdg-surface creation failed");
        return GLFW_FALSE;
    }

    FUNC5(window->wl.xdg.surface,
                             &xdgSurfaceListener,
                             window);

    window->wl.xdg.toplevel = FUNC6(window->wl.xdg.surface);
    if (!window->wl.xdg.toplevel)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: xdg-toplevel creation failed");
        return GLFW_FALSE;
    }

    FUNC7(window->wl.xdg.toplevel,
                              &xdgToplevelListener,
                              window);

    if (window->wl.title)
        FUNC12(window->wl.xdg.toplevel, window->wl.title);

    if (window->minwidth != GLFW_DONT_CARE && window->minheight != GLFW_DONT_CARE)
        FUNC11(window->wl.xdg.toplevel,
                                  window->minwidth, window->minheight);
    if (window->maxwidth != GLFW_DONT_CARE && window->maxheight != GLFW_DONT_CARE)
        FUNC9(window->wl.xdg.toplevel,
                                  window->maxwidth, window->maxheight);

    if (window->monitor)
    {
        FUNC8(window->wl.xdg.toplevel,
                                    window->monitor->wl.output);
        FUNC1(window, GLFW_TRUE);
    }
    else if (window->wl.maximized)
    {
        FUNC10(window->wl.xdg.toplevel);
        FUNC1(window, GLFW_FALSE);
        FUNC2(window);
    }
    else
    {
        FUNC1(window, GLFW_FALSE);
        FUNC2(window);
    }

    FUNC4(window->wl.surface);
    FUNC3(_glfw.wl.display);

    return GLFW_TRUE;
}