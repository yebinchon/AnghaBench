
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int uv__read_cgroups_uint64 (char*,char*) ;

uint64_t uv_get_constrained_memory(void) {





  return uv__read_cgroups_uint64("memory", "memory.limit_in_bytes");
}
