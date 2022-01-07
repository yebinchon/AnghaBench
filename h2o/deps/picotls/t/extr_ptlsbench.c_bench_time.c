
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;


 int CLOCK_PROCESS_CPUTIME_ID ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static uint64_t bench_time()
{
    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    return (uint64_t)tv.tv_sec * 1000000 + tv.tv_usec;
}
