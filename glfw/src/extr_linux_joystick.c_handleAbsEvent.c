
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct input_absinfo {int maximum; float minimum; } ;
struct TYPE_6__ {int* absMap; int** hats; struct input_absinfo* absInfo; } ;
struct TYPE_7__ {TYPE_1__ linjs; } ;
typedef TYPE_2__ _GLFWjoystick ;


 int ABS_HAT0X ;
 int ABS_HAT3Y ;
 int _glfwInputJoystickAxis (TYPE_2__*,int const,float) ;
 int _glfwInputJoystickHat (TYPE_2__*,int const,char const) ;

__attribute__((used)) static void handleAbsEvent(_GLFWjoystick* js, int code, int value)
{
    const int index = js->linjs.absMap[code];

    if (code >= ABS_HAT0X && code <= ABS_HAT3Y)
    {
        static const char stateMap[3][3] =
        {
            { 136, 128, 135 },
            { 134, 132, 133 },
            { 131, 129, 130 },
        };

        const int hat = (code - ABS_HAT0X) / 2;
        const int axis = (code - ABS_HAT0X) % 2;
        int* state = js->linjs.hats[hat];



        if (value == 0)
            state[axis] = 0;
        else if (value < 0)
            state[axis] = 1;
        else if (value > 0)
            state[axis] = 2;

        _glfwInputJoystickHat(js, index, stateMap[state[0]][state[1]]);
    }
    else
    {
        const struct input_absinfo* info = &js->linjs.absInfo[code];
        float normalized = value;

        const int range = info->maximum - info->minimum;
        if (range)
        {

            normalized = (normalized - info->minimum) / range;

            normalized = normalized * 2.0f - 1.0f;
        }

        _glfwInputJoystickAxis(js, index, normalized);
    }
}
