#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wl_surface {int dummy; } ;
struct wl_region {int dummy; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  viewport; int /*<<< orphan*/  subsurface; } ;
typedef  TYPE_2__ _GLFWdecorationWayland ;
struct TYPE_5__ {int /*<<< orphan*/  compositor; int /*<<< orphan*/  viewporter; int /*<<< orphan*/  subcompositor; } ;
struct TYPE_7__ {TYPE_1__ wl; } ;
typedef  scalar_t__ GLFWbool ;

/* Variables and functions */
 TYPE_4__ _glfw ; 
 struct wl_region* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl_region*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wl_region*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wl_surface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct wl_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct wl_region*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(_GLFWdecorationWayland* decoration,
                             struct wl_surface* parent,
                             struct wl_buffer* buffer, GLFWbool opaque,
                             int x, int y,
                             int width, int height)
{
    struct wl_region* region;

    decoration->surface = FUNC1(_glfw.wl.compositor);
    decoration->subsurface =
        FUNC4(_glfw.wl.subcompositor,
                                        decoration->surface, parent);
    FUNC5(decoration->subsurface, x, y);
    decoration->viewport = FUNC10(_glfw.wl.viewporter,
                                                      decoration->surface);
    FUNC9(decoration->viewport, width, height);
    FUNC6(decoration->surface, buffer, 0, 0);

    if (opaque)
    {
        region = FUNC0(_glfw.wl.compositor);
        FUNC2(region, 0, 0, width, height);
        FUNC8(decoration->surface, region);
        FUNC7(decoration->surface);
        FUNC3(region);
    }
    else
        FUNC7(decoration->surface);
}