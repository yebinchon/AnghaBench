
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int quicly_now_t ;
typedef int int64_t ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int64_t default_now(quicly_now_t *self)
{
    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    return (int64_t)tv.tv_sec * 1000 + tv.tv_usec / 1000;
}
