#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWwindow ;
struct TYPE_4__ {int /*<<< orphan*/  available; } ;
struct TYPE_5__ {int /*<<< orphan*/ * disabledCursorWindow; TYPE_1__ xi; } ;
struct TYPE_6__ {TYPE_2__ x11; } ;
typedef  scalar_t__ GLFWbool ;

/* Variables and functions */
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(_GLFWwindow *window, GLFWbool enabled)
{
    if (!_glfw.x11.xi.available)
        return;

    if (_glfw.x11.disabledCursorWindow != window)
        return;

    if (enabled)
        FUNC1(window);
    else
        FUNC0(window);
}