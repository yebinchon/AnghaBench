
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int XPending (int ) ;
 TYPE_2__ _glfw ;
 int _glfwPlatformPollEvents () ;
 int waitForEvent (int *) ;

void _glfwPlatformWaitEvents(void)
{
    while (!XPending(_glfw.x11.display))
        waitForEvent(((void*)0));

    _glfwPlatformPollEvents();
}
