#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  viewport; int /*<<< orphan*/  subsurface; } ;
struct TYPE_14__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  viewport; int /*<<< orphan*/  subsurface; } ;
struct TYPE_13__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  viewport; } ;
struct TYPE_12__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  viewport; } ;
struct TYPE_16__ {TYPE_4__ bottom; TYPE_3__ right; TYPE_2__ left; TYPE_1__ top; } ;
struct TYPE_17__ {int scale; int width; int height; TYPE_5__ decorations; int /*<<< orphan*/  transparent; int /*<<< orphan*/  native; } ;
struct TYPE_18__ {TYPE_6__ wl; } ;
typedef  TYPE_7__ _GLFWwindow ;

/* Variables and functions */
 int _GLFW_DECORATION_HORIZONTAL ; 
 int _GLFW_DECORATION_TOP ; 
 int _GLFW_DECORATION_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(_GLFWwindow* window)
{
    int scale = window->wl.scale;
    int scaledWidth = window->wl.width * scale;
    int scaledHeight = window->wl.height * scale;
    FUNC3(window->wl.native, scaledWidth, scaledHeight, 0, 0);
    if (!window->wl.transparent)
        FUNC2(window);
    FUNC0(window, scaledWidth, scaledHeight);
    FUNC1(window, scale, scale);

    if (!window->wl.decorations.top.surface)
        return;

    // Top decoration.
    FUNC6(window->wl.decorations.top.viewport,
                                window->wl.width, _GLFW_DECORATION_TOP);
    FUNC5(window->wl.decorations.top.surface);

    // Left decoration.
    FUNC6(window->wl.decorations.left.viewport,
                                _GLFW_DECORATION_WIDTH, window->wl.height + _GLFW_DECORATION_TOP);
    FUNC5(window->wl.decorations.left.surface);

    // Right decoration.
    FUNC4(window->wl.decorations.right.subsurface,
                               window->wl.width, -_GLFW_DECORATION_TOP);
    FUNC6(window->wl.decorations.right.viewport,
                                _GLFW_DECORATION_WIDTH, window->wl.height + _GLFW_DECORATION_TOP);
    FUNC5(window->wl.decorations.right.surface);

    // Bottom decoration.
    FUNC4(window->wl.decorations.bottom.subsurface,
                               -_GLFW_DECORATION_WIDTH, window->wl.height);
    FUNC6(window->wl.decorations.bottom.viewport,
                                window->wl.width + _GLFW_DECORATION_HORIZONTAL, _GLFW_DECORATION_WIDTH);
    FUNC5(window->wl.decorations.bottom.surface);
}