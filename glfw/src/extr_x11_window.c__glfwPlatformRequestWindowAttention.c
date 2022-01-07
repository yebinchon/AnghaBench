
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_3__ {int NET_WM_STATE_DEMANDS_ATTENTION; int NET_WM_STATE; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int _NET_WM_STATE_ADD ;
 TYPE_2__ _glfw ;
 int sendEventToWM (int *,int ,int ,int ,int ,int,int ) ;

void _glfwPlatformRequestWindowAttention(_GLFWwindow* window)
{
    sendEventToWM(window,
                  _glfw.x11.NET_WM_STATE,
                  _NET_WM_STATE_ADD,
                  _glfw.x11.NET_WM_STATE_DEMANDS_ATTENTION,
                  0, 1, 0);
}
