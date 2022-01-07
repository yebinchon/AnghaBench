
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int frequency; } ;
struct TYPE_4__ {TYPE_2__ ns; } ;
struct TYPE_6__ {TYPE_1__ timer; } ;


 TYPE_3__ _glfw ;

uint64_t _glfwPlatformGetTimerFrequency(void)
{
    return _glfw.timer.ns.frequency;
}
