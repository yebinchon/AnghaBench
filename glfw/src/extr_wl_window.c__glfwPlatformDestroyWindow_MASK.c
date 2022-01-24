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
struct TYPE_17__ {scalar_t__ surface; scalar_t__ toplevel; scalar_t__ decoration; } ;
struct TYPE_16__ {scalar_t__ buffer; } ;
struct TYPE_18__ {int /*<<< orphan*/  monitors; int /*<<< orphan*/  title; scalar_t__ surface; TYPE_4__ xdg; scalar_t__ native; TYPE_3__ decorations; scalar_t__ idleInhibitor; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* destroy ) (TYPE_6__*) ;} ;
struct TYPE_19__ {TYPE_5__ wl; TYPE_2__ context; } ;
typedef  TYPE_6__ _GLFWwindow ;
struct TYPE_14__ {TYPE_6__* keyboardFocus; TYPE_6__* pointerFocus; } ;
struct TYPE_13__ {TYPE_1__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 TYPE_12__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

void FUNC12(_GLFWwindow* window)
{
    if (window == _glfw.wl.pointerFocus)
    {
        _glfw.wl.pointerFocus = NULL;
        FUNC0(window, GLFW_FALSE);
    }
    if (window == _glfw.wl.keyboardFocus)
    {
        _glfw.wl.keyboardFocus = NULL;
        FUNC1(window, GLFW_FALSE);
    }

    if (window->wl.idleInhibitor)
        FUNC10(window->wl.idleInhibitor);

    if (window->context.destroy)
        window->context.destroy(window);

    FUNC2(window);
    if (window->wl.xdg.decoration)
        FUNC11(window->wl.xdg.decoration);

    if (window->wl.decorations.buffer)
        FUNC5(window->wl.decorations.buffer);

    if (window->wl.native)
        FUNC6(window->wl.native);

    if (window->wl.xdg.toplevel)
        FUNC9(window->wl.xdg.toplevel);

    if (window->wl.xdg.surface)
        FUNC8(window->wl.xdg.surface);

    if (window->wl.surface)
        FUNC7(window->wl.surface);

    FUNC3(window->wl.title);
    FUNC3(window->wl.monitors);
}