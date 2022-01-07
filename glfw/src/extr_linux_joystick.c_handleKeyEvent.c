
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * keyMap; } ;
struct TYPE_6__ {TYPE_1__ linjs; } ;
typedef TYPE_2__ _GLFWjoystick ;


 int BTN_MISC ;
 int GLFW_PRESS ;
 int GLFW_RELEASE ;
 int _glfwInputJoystickButton (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void handleKeyEvent(_GLFWjoystick* js, int code, int value)
{
    _glfwInputJoystickButton(js,
                             js->linjs.keyMap[code - BTN_MISC],
                             value ? GLFW_PRESS : GLFW_RELEASE);
}
