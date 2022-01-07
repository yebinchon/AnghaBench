
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int ptls_get_time_t ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static uint64_t get_time(ptls_get_time_t *self)
{
    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    return (uint64_t)tv.tv_sec * 1000 + tv.tv_usec / 1000;
}
