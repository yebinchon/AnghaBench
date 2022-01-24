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
struct TYPE_6__ {scalar_t__ present; } ;
typedef  TYPE_2__ _GLFWjoystick ;
struct TYPE_5__ {scalar_t__ inotify; scalar_t__ watch; int /*<<< orphan*/  regex; } ;
struct TYPE_7__ {TYPE_1__ linjs; TYPE_2__* joysticks; } ;

/* Variables and functions */
 int GLFW_JOYSTICK_LAST ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
    int jid;

    for (jid = 0;  jid <= GLFW_JOYSTICK_LAST;  jid++)
    {
        _GLFWjoystick* js = _glfw.joysticks + jid;
        if (js->present)
            FUNC1(js);
    }

    FUNC3(&_glfw.linjs.regex);

    if (_glfw.linjs.inotify > 0)
    {
        if (_glfw.linjs.watch > 0)
            FUNC2(_glfw.linjs.inotify, _glfw.linjs.watch);

        FUNC0(_glfw.linjs.inotify);
    }
}