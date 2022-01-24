#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  top; } ;
struct TYPE_6__ {TYPE_1__ decorations; } ;
struct TYPE_7__ {TYPE_2__ wl; } ;
typedef  TYPE_3__ _GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(_GLFWwindow* window)
{
    FUNC0(&window->wl.decorations.top);
    FUNC0(&window->wl.decorations.left);
    FUNC0(&window->wl.decorations.right);
    FUNC0(&window->wl.decorations.bottom);
}