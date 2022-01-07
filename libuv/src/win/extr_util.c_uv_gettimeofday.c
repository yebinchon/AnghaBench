
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef TYPE_1__ uv_timeval64_t ;
typedef long uint64_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_7__ {long const QuadPart; int HighPart; int LowPart; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_8__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef TYPE_3__ FILETIME ;


 int GetSystemTimeAsFileTime (TYPE_3__*) ;
 int UV_EINVAL ;

int uv_gettimeofday(uv_timeval64_t* tv) {

  const uint64_t epoch = (uint64_t) 116444736000000000ULL;
  FILETIME file_time;
  ULARGE_INTEGER ularge;

  if (tv == ((void*)0))
    return UV_EINVAL;

  GetSystemTimeAsFileTime(&file_time);
  ularge.LowPart = file_time.dwLowDateTime;
  ularge.HighPart = file_time.dwHighDateTime;
  tv->tv_sec = (int64_t) ((ularge.QuadPart - epoch) / 10000000L);
  tv->tv_usec = (int32_t) (((ularge.QuadPart - epoch) % 10000000L) / 10);
  return 0;
}
