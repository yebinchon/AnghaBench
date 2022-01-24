#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* mapping; int /*<<< orphan*/  present; } ;
typedef  TYPE_2__ _GLFWjoystick ;
struct TYPE_7__ {TYPE_2__* joysticks; } ;
struct TYPE_5__ {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 int GLFW_JOYSTICK_1 ; 
 int GLFW_JOYSTICK_LAST ; 
 int /*<<< orphan*/  _GLFW_POLL_PRESENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

const char* FUNC4(int jid)
{
    _GLFWjoystick* js;

    FUNC3(jid >= GLFW_JOYSTICK_1);
    FUNC3(jid <= GLFW_JOYSTICK_LAST);

    FUNC0(NULL);

    if (jid < 0 || jid > GLFW_JOYSTICK_LAST)
    {
        FUNC1(GLFW_INVALID_ENUM, "Invalid joystick ID %i", jid);
        return NULL;
    }

    js = _glfw.joysticks + jid;
    if (!js->present)
        return NULL;

    if (!FUNC2(js, _GLFW_POLL_PRESENCE))
        return NULL;

    if (!js->mapping)
        return NULL;

    return js->mapping->name;
}