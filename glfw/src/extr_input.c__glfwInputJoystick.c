
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWjoystick ;
struct TYPE_3__ {int (* joystick ) (int const,int) ;} ;
struct TYPE_4__ {int joysticks; TYPE_1__ callbacks; } ;


 TYPE_2__ _glfw ;
 int stub1 (int const,int) ;

void _glfwInputJoystick(_GLFWjoystick* js, int event)
{
    const int jid = (int) (js - _glfw.joysticks);

    if (_glfw.callbacks.joystick)
        _glfw.callbacks.joystick(jid, event);
}
