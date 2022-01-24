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
struct TYPE_3__ {void* userPointer; int /*<<< orphan*/  present; } ;
typedef  TYPE_1__ _GLFWjoystick ;
struct TYPE_4__ {TYPE_1__* joysticks; } ;

/* Variables and functions */
 int GLFW_JOYSTICK_1 ; 
 int GLFW_JOYSTICK_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void* FUNC2(int jid)
{
    _GLFWjoystick* js;

    FUNC1(jid >= GLFW_JOYSTICK_1);
    FUNC1(jid <= GLFW_JOYSTICK_LAST);

    FUNC0(NULL);

    js = _glfw.joysticks + jid;
    if (!js->present)
        return NULL;

    return js->userPointer;
}