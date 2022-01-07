
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int objects; scalar_t__ device; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWjoystick ;


 int GLFW_DISCONNECTED ;
 int IDirectInputDevice8_Release (scalar_t__) ;
 int IDirectInputDevice8_Unacquire (scalar_t__) ;
 int _glfwFreeJoystick (TYPE_2__*) ;
 int _glfwInputJoystick (TYPE_2__*,int ) ;
 int free (int ) ;

__attribute__((used)) static void closeJoystick(_GLFWjoystick* js)
{
    if (js->win32.device)
    {
        IDirectInputDevice8_Unacquire(js->win32.device);
        IDirectInputDevice8_Release(js->win32.device);
    }

    free(js->win32.objects);

    _glfwFreeJoystick(js);
    _glfwInputJoystick(js, GLFW_DISCONNECTED);
}
