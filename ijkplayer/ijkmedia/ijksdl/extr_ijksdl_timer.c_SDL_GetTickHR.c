
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int Uint64 ;
struct TYPE_3__ {int numer; int denom; } ;


 int CLOCK_MONOTONIC_COARSE ;
 int CLOCK_MONOTONIC_HR ;
 int clock_gettime (int ,struct timespec*) ;
 int g_is_mach_base_info_inited ;
 TYPE_1__ g_mach_base_info ;
 scalar_t__ g_mach_base_info_ret ;
 int gettimeofday (struct timeval*,int *) ;
 int mach_absolute_time () ;
 scalar_t__ mach_timebase_info (TYPE_1__*) ;

Uint64 SDL_GetTickHR(void)
{
    Uint64 clock;
    return (clock);
}
