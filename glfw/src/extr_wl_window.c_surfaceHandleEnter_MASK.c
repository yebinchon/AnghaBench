#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wl_surface {int dummy; } ;
struct wl_output {int dummy; } ;
struct TYPE_4__ {int monitorsCount; int monitorsSize; int /*<<< orphan*/ ** monitors; } ;
struct TYPE_5__ {TYPE_1__ wl; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct wl_output*) ; 

__attribute__((used)) static void FUNC3(void *data,
                               struct wl_surface *surface,
                               struct wl_output *output)
{
    _GLFWwindow* window = data;
    _GLFWmonitor* monitor = FUNC2(output);

    if (window->wl.monitorsCount + 1 > window->wl.monitorsSize)
    {
        ++window->wl.monitorsSize;
        window->wl.monitors =
            FUNC1(window->wl.monitors,
                    window->wl.monitorsSize * sizeof(_GLFWmonitor*));
    }

    window->wl.monitors[window->wl.monitorsCount++] = monitor;

    FUNC0(window);
}