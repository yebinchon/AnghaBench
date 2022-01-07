
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int info ;


 int CTL_HW ;
 int HW_PHYSMEM64 ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int *,int ) ;

uint64_t uv_get_total_memory(void) {
  uint64_t info;
  int which[] = {CTL_HW, HW_PHYSMEM64};
  size_t size = sizeof(info);

  if (sysctl(which, 2, &info, &size, ((void*)0), 0))
    return UV__ERR(errno);

  return (uint64_t) info;
}
