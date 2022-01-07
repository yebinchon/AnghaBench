
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_cpu_info_t ;


 int UV_ENOSYS ;

int uv_cpu_info(uv_cpu_info_t** cpu_infos, int* count) {

  *cpu_infos = ((void*)0);
  *count = 0;
  return UV_ENOSYS;
}
