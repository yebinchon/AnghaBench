
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pmc ;
struct TYPE_3__ {size_t WorkingSetSize; } ;
typedef TYPE_1__ PROCESS_MEMORY_COUNTERS ;
typedef int HANDLE ;


 int GetCurrentProcess () ;
 int GetLastError () ;
 int GetProcessMemoryInfo (int ,TYPE_1__*,int) ;
 int uv_translate_sys_error (int ) ;

int uv_resident_set_memory(size_t* rss) {
  HANDLE current_process;
  PROCESS_MEMORY_COUNTERS pmc;

  current_process = GetCurrentProcess();

  if (!GetProcessMemoryInfo(current_process, &pmc, sizeof(pmc))) {
    return uv_translate_sys_error(GetLastError());
  }

  *rss = pmc.WorkingSetSize;

  return 0;
}
