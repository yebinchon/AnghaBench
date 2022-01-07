
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_4__ {int frequency; int monotonic; } ;
struct TYPE_5__ {TYPE_1__ posix; } ;
struct TYPE_6__ {TYPE_2__ timer; } ;


 int CLOCK_MONOTONIC ;
 int GLFW_FALSE ;
 int GLFW_TRUE ;
 TYPE_3__ _glfw ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;

void _glfwInitTimerPOSIX(void)
{
    {
        _glfw.timer.posix.monotonic = GLFW_FALSE;
        _glfw.timer.posix.frequency = 1000000;
    }
}
