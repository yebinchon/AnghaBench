
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int available; } ;
struct TYPE_4__ {TYPE_2__ xi; } ;
struct TYPE_6__ {TYPE_1__ x11; } ;
typedef int GLFWbool ;


 TYPE_3__ _glfw ;

GLFWbool _glfwPlatformRawMouseMotionSupported(void)
{
    return _glfw.x11.xi.available;
}
