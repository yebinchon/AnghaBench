
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ hasPC; } ;
struct TYPE_5__ {TYPE_1__ win32; } ;
struct TYPE_6__ {TYPE_2__ timer; } ;
typedef int LARGE_INTEGER ;


 int QueryPerformanceCounter (int *) ;
 TYPE_3__ _glfw ;
 int timeGetTime () ;

uint64_t _glfwPlatformGetTimerValue(void)
{
    if (_glfw.timer.win32.hasPC)
    {
        uint64_t value;
        QueryPerformanceCounter((LARGE_INTEGER*) &value);
        return value;
    }
    else
        return (uint64_t) timeGetTime();
}
