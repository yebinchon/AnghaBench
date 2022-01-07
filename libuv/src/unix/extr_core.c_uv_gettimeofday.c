
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef TYPE_1__ uv_timeval64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;

int uv_gettimeofday(uv_timeval64_t* tv) {
  struct timeval time;

  if (tv == ((void*)0))
    return UV_EINVAL;

  if (gettimeofday(&time, ((void*)0)) != 0)
    return UV__ERR(errno);

  tv->tv_sec = (int64_t) time.tv_sec;
  tv->tv_usec = (int32_t) time.tv_usec;
  return 0;
}
