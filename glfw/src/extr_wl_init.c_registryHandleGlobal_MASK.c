#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct wl_registry {int dummy; } ;
struct TYPE_3__ {int compositorVersion; int seatVersion; void* idleInhibitManager; void* pointerConstraints; void* relativePointerManager; void* viewporter; void* decorationManager; void* wmBase; void* dataDeviceManager; void* seat; void* shm; void* subcompositor; void* compositor; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;

/* Variables and functions */
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seatListener ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  wl_compositor_interface ; 
 int /*<<< orphan*/  wl_data_device_manager_interface ; 
 void* FUNC3 (struct wl_registry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wl_seat_interface ; 
 int /*<<< orphan*/  wl_shm_interface ; 
 int /*<<< orphan*/  wl_subcompositor_interface ; 
 int /*<<< orphan*/  wmBaseListener ; 
 int /*<<< orphan*/  wp_viewporter_interface ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdg_wm_base_interface ; 
 int /*<<< orphan*/  zwp_idle_inhibit_manager_v1_interface ; 
 int /*<<< orphan*/  zwp_pointer_constraints_v1_interface ; 
 int /*<<< orphan*/  zwp_relative_pointer_manager_v1_interface ; 
 int /*<<< orphan*/  zxdg_decoration_manager_v1_interface ; 

__attribute__((used)) static void FUNC6(void* data,
                                 struct wl_registry* registry,
                                 uint32_t name,
                                 const char* interface,
                                 uint32_t version)
{
    if (FUNC2(interface, "wl_compositor") == 0)
    {
        _glfw.wl.compositorVersion = FUNC1(3, version);
        _glfw.wl.compositor =
            FUNC3(registry, name, &wl_compositor_interface,
                             _glfw.wl.compositorVersion);
    }
    else if (FUNC2(interface, "wl_subcompositor") == 0)
    {
        _glfw.wl.subcompositor =
            FUNC3(registry, name, &wl_subcompositor_interface, 1);
    }
    else if (FUNC2(interface, "wl_shm") == 0)
    {
        _glfw.wl.shm =
            FUNC3(registry, name, &wl_shm_interface, 1);
    }
    else if (FUNC2(interface, "wl_output") == 0)
    {
        FUNC0(name, version);
    }
    else if (FUNC2(interface, "wl_seat") == 0)
    {
        if (!_glfw.wl.seat)
        {
            _glfw.wl.seatVersion = FUNC1(4, version);
            _glfw.wl.seat =
                FUNC3(registry, name, &wl_seat_interface,
                                 _glfw.wl.seatVersion);
            FUNC4(_glfw.wl.seat, &seatListener, NULL);
        }
    }
    else if (FUNC2(interface, "wl_data_device_manager") == 0)
    {
        if (!_glfw.wl.dataDeviceManager)
        {
            _glfw.wl.dataDeviceManager =
                FUNC3(registry, name,
                                 &wl_data_device_manager_interface, 1);
        }
    }
    else if (FUNC2(interface, "xdg_wm_base") == 0)
    {
        _glfw.wl.wmBase =
            FUNC3(registry, name, &xdg_wm_base_interface, 1);
        FUNC5(_glfw.wl.wmBase, &wmBaseListener, NULL);
    }
    else if (FUNC2(interface, "zxdg_decoration_manager_v1") == 0)
    {
        _glfw.wl.decorationManager =
            FUNC3(registry, name,
                             &zxdg_decoration_manager_v1_interface,
                             1);
    }
    else if (FUNC2(interface, "wp_viewporter") == 0)
    {
        _glfw.wl.viewporter =
            FUNC3(registry, name, &wp_viewporter_interface, 1);
    }
    else if (FUNC2(interface, "zwp_relative_pointer_manager_v1") == 0)
    {
        _glfw.wl.relativePointerManager =
            FUNC3(registry, name,
                             &zwp_relative_pointer_manager_v1_interface,
                             1);
    }
    else if (FUNC2(interface, "zwp_pointer_constraints_v1") == 0)
    {
        _glfw.wl.pointerConstraints =
            FUNC3(registry, name,
                             &zwp_pointer_constraints_v1_interface,
                             1);
    }
    else if (FUNC2(interface, "zwp_idle_inhibit_manager_v1") == 0)
    {
        _glfw.wl.idleInhibitManager =
            FUNC3(registry, name,
                             &zwp_idle_inhibit_manager_v1_interface,
                             1);
    }
}