
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ present; } ;
typedef TYPE_2__ _GLFWjoystick ;
struct TYPE_5__ {scalar_t__ inotify; scalar_t__ watch; int regex; } ;
struct TYPE_7__ {TYPE_1__ linjs; TYPE_2__* joysticks; } ;


 int GLFW_JOYSTICK_LAST ;
 TYPE_4__ _glfw ;
 int close (scalar_t__) ;
 int closeJoystick (TYPE_2__*) ;
 int inotify_rm_watch (scalar_t__,scalar_t__) ;
 int regfree (int *) ;

void _glfwTerminateJoysticksLinux(void)
{
    int jid;

    for (jid = 0; jid <= GLFW_JOYSTICK_LAST; jid++)
    {
        _GLFWjoystick* js = _glfw.joysticks + jid;
        if (js->present)
            closeJoystick(js);
    }

    regfree(&_glfw.linjs.regex);

    if (_glfw.linjs.inotify > 0)
    {
        if (_glfw.linjs.watch > 0)
            inotify_rm_watch(_glfw.linjs.inotify, _glfw.linjs.watch);

        close(_glfw.linjs.inotify);
    }
}
