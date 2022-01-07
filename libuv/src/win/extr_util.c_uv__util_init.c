
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int InitializeCriticalSection (int *) ;
 scalar_t__ QueryPerformanceFrequency (TYPE_1__*) ;
 double hrtime_interval_ ;
 int process_title_lock ;

void uv__util_init(void) {
  LARGE_INTEGER perf_frequency;


  InitializeCriticalSection(&process_title_lock);




  if (QueryPerformanceFrequency(&perf_frequency)) {
    hrtime_interval_ = 1.0 / perf_frequency.QuadPart;
  } else {
    hrtime_interval_= 0;
  }
}
