
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buttons; } ;
typedef TYPE_1__ _GLFWjoystick ;



void _glfwInputJoystickButton(_GLFWjoystick* js, int button, char value)
{
    js->buttons[button] = value;
}
