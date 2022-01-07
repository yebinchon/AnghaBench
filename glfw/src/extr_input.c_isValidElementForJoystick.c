
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int index; } ;
typedef TYPE_1__ _GLFWmapelement ;
struct TYPE_6__ {int hatCount; int buttonCount; int axisCount; } ;
typedef TYPE_2__ _GLFWjoystick ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 scalar_t__ _GLFW_JOYSTICK_AXIS ;
 scalar_t__ _GLFW_JOYSTICK_BUTTON ;
 scalar_t__ _GLFW_JOYSTICK_HATBIT ;

__attribute__((used)) static GLFWbool isValidElementForJoystick(const _GLFWmapelement* e,
                                          const _GLFWjoystick* js)
{
    if (e->type == _GLFW_JOYSTICK_HATBIT && (e->index >> 4) >= js->hatCount)
        return GLFW_FALSE;
    else if (e->type == _GLFW_JOYSTICK_BUTTON && e->index >= js->buttonCount)
        return GLFW_FALSE;
    else if (e->type == _GLFW_JOYSTICK_AXIS && e->index >= js->axisCount)
        return GLFW_FALSE;

    return GLFW_TRUE;
}
