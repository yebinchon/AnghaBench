
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hats; int buttons; int axes; int name; } ;
typedef TYPE_1__ _GLFWjoystick ;


 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void _glfwFreeJoystick(_GLFWjoystick* js)
{
    free(js->name);
    free(js->axes);
    free(js->buttons);
    free(js->hats);
    memset(js, 0, sizeof(_GLFWjoystick));
}
