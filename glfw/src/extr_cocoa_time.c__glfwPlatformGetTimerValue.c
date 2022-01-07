
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int mach_absolute_time () ;

uint64_t _glfwPlatformGetTimerValue(void)
{
    return mach_absolute_time();
}
