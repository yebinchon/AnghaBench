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
struct zwp_relative_pointer_v1 {int dummy; } ;
struct zwp_locked_pointer_v1 {int dummy; } ;
struct TYPE_9__ {struct zwp_locked_pointer_v1* lockedPointer; struct zwp_relative_pointer_v1* relativePointer; } ;
struct TYPE_10__ {TYPE_1__ pointerLock; int /*<<< orphan*/  surface; } ;
struct TYPE_12__ {TYPE_2__ wl; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_11__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  pointer; int /*<<< orphan*/  pointerConstraints; int /*<<< orphan*/  relativePointerManager; } ;
struct TYPE_13__ {TYPE_3__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  ZWP_POINTER_CONSTRAINTS_V1_LIFETIME_PERSISTENT ; 
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lockedPointerListener ; 
 int /*<<< orphan*/  relativePointerListener ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zwp_locked_pointer_v1*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 struct zwp_locked_pointer_v1* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct zwp_relative_pointer_v1* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zwp_relative_pointer_v1*,int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static void FUNC6(_GLFWwindow* window)
{
    struct zwp_relative_pointer_v1* relativePointer;
    struct zwp_locked_pointer_v1* lockedPointer;

    if (!_glfw.wl.relativePointerManager)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: no relative pointer manager");
        return;
    }

    relativePointer =
        FUNC4(
            _glfw.wl.relativePointerManager,
            _glfw.wl.pointer);
    FUNC5(relativePointer,
                                         &relativePointerListener,
                                         window);

    lockedPointer =
        FUNC3(
            _glfw.wl.pointerConstraints,
            window->wl.surface,
            _glfw.wl.pointer,
            NULL,
            ZWP_POINTER_CONSTRAINTS_V1_LIFETIME_PERSISTENT);
    FUNC2(lockedPointer,
                                       &lockedPointerListener,
                                       window);

    window->wl.pointerLock.relativePointer = relativePointer;
    window->wl.pointerLock.lockedPointer = lockedPointer;

    FUNC1(_glfw.wl.pointer, _glfw.wl.serial,
                          NULL, 0, 0);
}