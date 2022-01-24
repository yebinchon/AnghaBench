#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hatCount; unsigned char const* hats; int /*<<< orphan*/  present; } ;
typedef  TYPE_1__ _GLFWjoystick ;
struct TYPE_5__ {TYPE_1__* joysticks; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 int GLFW_JOYSTICK_1 ; 
 int GLFW_JOYSTICK_LAST ; 
 int /*<<< orphan*/  _GLFW_POLL_BUTTONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

const unsigned char* FUNC4(int jid, int* count)
{
    _GLFWjoystick* js;

    FUNC3(jid >= GLFW_JOYSTICK_1);
    FUNC3(jid <= GLFW_JOYSTICK_LAST);
    FUNC3(count != NULL);

    *count = 0;

    FUNC0(NULL);

    if (jid < 0 || jid > GLFW_JOYSTICK_LAST)
    {
        FUNC1(GLFW_INVALID_ENUM, "Invalid joystick ID %i", jid);
        return NULL;
    }

    js = _glfw.joysticks + jid;
    if (!js->present)
        return NULL;

    if (!FUNC2(js, _GLFW_POLL_BUTTONS))
        return NULL;

    *count = js->hatCount;
    return js->hats;
}