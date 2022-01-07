
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_1__*) ;
 double hrtime_interval_ ;

uint64_t uv__hrtime(double scale) {
  LARGE_INTEGER counter;


  if (hrtime_interval_ == 0) {
    return 0;
  }

  if (!QueryPerformanceCounter(&counter)) {
    return 0;
  }





  return (uint64_t) ((double) counter.QuadPart * hrtime_interval_ * scale);
}
