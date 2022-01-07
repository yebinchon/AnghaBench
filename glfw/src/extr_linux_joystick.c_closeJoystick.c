
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {TYPE_1__ linjs; } ;
typedef TYPE_2__ _GLFWjoystick ;


 int GLFW_DISCONNECTED ;
 int _glfwFreeJoystick (TYPE_2__*) ;
 int _glfwInputJoystick (TYPE_2__*,int ) ;
 int close (int ) ;

__attribute__((used)) static void closeJoystick(_GLFWjoystick* js)
{
    close(js->linjs.fd);
    _glfwFreeJoystick(js);
    _glfwInputJoystick(js, GLFW_DISCONNECTED);
}
