
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;



__attribute__((used)) static void dummy_clock_access(struct timespec64 *ts)
{
 ts->tv_sec = 0;
 ts->tv_nsec = 0;
}
