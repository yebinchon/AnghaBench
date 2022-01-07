
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int memory_status ;
struct TYPE_3__ {int dwLength; int ullTotalPhys; } ;
typedef TYPE_1__ MEMORYSTATUSEX ;


 int GlobalMemoryStatusEx (TYPE_1__*) ;

uint64_t uv_get_total_memory(void) {
  MEMORYSTATUSEX memory_status;
  memory_status.dwLength = sizeof(memory_status);

  if (!GlobalMemoryStatusEx(&memory_status)) {
    return -1;
  }

  return (uint64_t)memory_status.ullTotalPhys;
}
