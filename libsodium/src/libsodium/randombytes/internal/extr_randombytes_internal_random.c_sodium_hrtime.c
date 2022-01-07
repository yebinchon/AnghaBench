
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int sodium_misuse () ;

__attribute__((used)) static uint64_t
sodium_hrtime(void)
{
    struct timeval tv;

    if (gettimeofday(&tv, ((void*)0)) != 0) {
        sodium_misuse();
    }
    return ((uint64_t) tv.tv_sec) * 1000000U + (uint64_t) tv.tv_usec;
}
