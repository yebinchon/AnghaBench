
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static uint32_t now_in_ms(void)
{
 struct timeval now;
 gettimeofday(&now, ((void*)0));
 return (uint32_t)((now.tv_sec * 1000) + (now.tv_usec / 1000));
}
