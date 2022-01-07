
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* userPointer; int present; } ;
typedef TYPE_1__ _GLFWjoystick ;
struct TYPE_4__ {TYPE_1__* joysticks; } ;


 int GLFW_JOYSTICK_1 ;
 int GLFW_JOYSTICK_LAST ;
 int _GLFW_REQUIRE_INIT () ;
 TYPE_2__ _glfw ;
 int assert (int) ;

void glfwSetJoystickUserPointer(int jid, void* pointer)
{
    _GLFWjoystick* js;

    assert(jid >= GLFW_JOYSTICK_1);
    assert(jid <= GLFW_JOYSTICK_LAST);

    _GLFW_REQUIRE_INIT();

    js = _glfw.joysticks + jid;
    if (!js->present)
        return;

    js->userPointer = pointer;
}
