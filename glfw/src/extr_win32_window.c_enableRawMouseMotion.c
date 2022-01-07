
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rid ;
struct TYPE_6__ {int handle; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int member_0; int member_1; int member_3; int member_2; } ;
typedef TYPE_3__ RAWINPUTDEVICE ;


 int GLFW_PLATFORM_ERROR ;
 int RegisterRawInputDevices (TYPE_3__ const*,int,int) ;
 int _glfwInputErrorWin32 (int ,char*) ;

__attribute__((used)) static void enableRawMouseMotion(_GLFWwindow* window)
{
    const RAWINPUTDEVICE rid = { 0x01, 0x02, 0, window->win32.handle };

    if (!RegisterRawInputDevices(&rid, 1, sizeof(rid)))
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to register raw input device");
    }
}
