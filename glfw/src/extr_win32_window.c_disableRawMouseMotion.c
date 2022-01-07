
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rid ;
typedef int _GLFWwindow ;
struct TYPE_3__ {int member_0; int member_1; int * member_3; int member_2; } ;
typedef TYPE_1__ RAWINPUTDEVICE ;


 int GLFW_PLATFORM_ERROR ;
 int RIDEV_REMOVE ;
 int RegisterRawInputDevices (TYPE_1__ const*,int,int) ;
 int _glfwInputErrorWin32 (int ,char*) ;

__attribute__((used)) static void disableRawMouseMotion(_GLFWwindow* window)
{
    const RAWINPUTDEVICE rid = { 0x01, 0x02, RIDEV_REMOVE, ((void*)0) };

    if (!RegisterRawInputDevices(&rid, 1, sizeof(rid)))
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to remove raw input device");
    }
}
