
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t ARRAY_SIZE (int *) ;
 int BUG (char*) ;
 int getnanotime () ;
 size_t perf_indent ;
 int * perf_start_times ;
 int trace_perf_key ;
 int trace_want (int *) ;

uint64_t trace_performance_enter(void)
{
 uint64_t now;

 if (!trace_want(&trace_perf_key))
  return 0;

 now = getnanotime();
 perf_start_times[perf_indent] = now;
 if (perf_indent + 1 < ARRAY_SIZE(perf_start_times))
  perf_indent++;
 else
  BUG("Too deep indentation");
 return now;
}
