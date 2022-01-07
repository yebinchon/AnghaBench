
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; int guid; scalar_t__ axes; scalar_t__ buttons; } ;
typedef TYPE_1__ _GLFWmapping ;
struct TYPE_8__ {int guid; } ;
typedef TYPE_2__ _GLFWjoystick ;


 int GLFW_GAMEPAD_AXIS_LAST ;
 int GLFW_GAMEPAD_BUTTON_LAST ;
 int GLFW_INVALID_VALUE ;
 int _glfwInputError (int ,char*,int ,int ) ;
 TYPE_1__* findMapping (int ) ;
 int isValidElementForJoystick (scalar_t__,TYPE_2__ const*) ;

__attribute__((used)) static _GLFWmapping* findValidMapping(const _GLFWjoystick* js)
{
    _GLFWmapping* mapping = findMapping(js->guid);
    if (mapping)
    {
        int i;

        for (i = 0; i <= GLFW_GAMEPAD_BUTTON_LAST; i++)
        {
            if (!isValidElementForJoystick(mapping->buttons + i, js))
            {
                _glfwInputError(GLFW_INVALID_VALUE,
                                "Invalid button in gamepad mapping %s (%s)",
                                mapping->guid,
                                mapping->name);
                return ((void*)0);
            }
        }

        for (i = 0; i <= GLFW_GAMEPAD_AXIS_LAST; i++)
        {
            if (!isValidElementForJoystick(mapping->axes + i, js))
            {
                _glfwInputError(GLFW_INVALID_VALUE,
                                "Invalid axis in gamepad mapping %s (%s)",
                                mapping->guid,
                                mapping->name);
                return ((void*)0);
            }
        }
    }

    return mapping;
}
