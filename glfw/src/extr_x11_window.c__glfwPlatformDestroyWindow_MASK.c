#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ colormap; scalar_t__ handle; int /*<<< orphan*/ * ic; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* destroy ) (TYPE_4__*) ;} ;
struct TYPE_12__ {TYPE_2__ x11; TYPE_1__ context; scalar_t__ monitor; } ;
typedef  TYPE_4__ _GLFWwindow ;
typedef  scalar_t__ Window ;
struct TYPE_11__ {int /*<<< orphan*/  display; int /*<<< orphan*/  context; TYPE_4__* disabledCursorWindow; } ;
struct TYPE_13__ {TYPE_3__ x11; } ;
typedef  scalar_t__ Colormap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

void FUNC8(_GLFWwindow* window)
{
    if (_glfw.x11.disabledCursorWindow == window)
        _glfw.x11.disabledCursorWindow = NULL;

    if (window->monitor)
        FUNC6(window);

    if (window->x11.ic)
    {
        FUNC1(window->x11.ic);
        window->x11.ic = NULL;
    }

    if (window->context.destroy)
        window->context.destroy(window);

    if (window->x11.handle)
    {
        FUNC0(_glfw.x11.display, window->x11.handle, _glfw.x11.context);
        FUNC5(_glfw.x11.display, window->x11.handle);
        FUNC2(_glfw.x11.display, window->x11.handle);
        window->x11.handle = (Window) 0;
    }

    if (window->x11.colormap)
    {
        FUNC4(_glfw.x11.display, window->x11.colormap);
        window->x11.colormap = (Colormap) 0;
    }

    FUNC3(_glfw.x11.display);
}