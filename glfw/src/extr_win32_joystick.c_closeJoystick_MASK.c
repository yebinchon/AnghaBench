#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  objects; scalar_t__ device; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWjoystick ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(_GLFWjoystick* js)
{
    if (js->win32.device)
    {
        FUNC1(js->win32.device);
        FUNC0(js->win32.device);
    }

    FUNC4(js->win32.objects);

    FUNC2(js);
    FUNC3(js, GLFW_DISCONNECTED);
}