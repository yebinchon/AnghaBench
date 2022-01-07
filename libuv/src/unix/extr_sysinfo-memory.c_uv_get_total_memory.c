
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sysinfo {int mem_unit; scalar_t__ totalram; } ;


 scalar_t__ sysinfo (struct sysinfo*) ;

uint64_t uv_get_total_memory(void) {
  struct sysinfo info;

  if (sysinfo(&info) == 0)
    return (uint64_t) info.totalram * info.mem_unit;
  return 0;
}
