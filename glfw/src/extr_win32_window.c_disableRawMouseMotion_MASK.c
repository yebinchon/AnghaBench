#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rid ;
typedef  int /*<<< orphan*/  _GLFWwindow ;
struct TYPE_3__ {int member_0; int member_1; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_1__ RAWINPUTDEVICE ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  RIDEV_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(_GLFWwindow* window)
{
    const RAWINPUTDEVICE rid = { 0x01, 0x02, &RIDEV_REMOVE, NULL };

    if (!FUNC0(&rid, 1, sizeof(rid)))
    {
        FUNC1(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to remove raw input device");
    }
}