#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct wl_output {int dummy; } ;
struct TYPE_8__ {int scale; int name; struct wl_output* output; } ;
struct TYPE_10__ {TYPE_1__ wl; } ;
typedef  TYPE_3__ _GLFWmonitor ;
struct TYPE_9__ {int /*<<< orphan*/  registry; } ;
struct TYPE_11__ {TYPE_2__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 TYPE_7__ _glfw ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  outputListener ; 
 int /*<<< orphan*/  FUNC3 (struct wl_output*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  wl_output_interface ; 
 struct wl_output* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

void FUNC5(uint32_t name, uint32_t version)
{
    _GLFWmonitor *monitor;
    struct wl_output *output;

    if (version < 2)
    {
        FUNC2(GLFW_PLATFORM_ERROR,
                        "Wayland: Unsupported output interface version");
        return;
    }

    // The actual name of this output will be set in the geometry handler.
    monitor = FUNC0(NULL, 0, 0);

    output = FUNC4(_glfw.wl.registry,
                              name,
                              &wl_output_interface,
                              2);
    if (!output)
    {
        FUNC1(monitor);
        return;
    }

    monitor->wl.scale = 1;
    monitor->wl.output = output;
    monitor->wl.name = name;

    FUNC3(output, &outputListener, monitor);
}