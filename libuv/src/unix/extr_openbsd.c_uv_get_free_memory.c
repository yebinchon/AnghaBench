
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct uvmexp {scalar_t__ free; } ;
typedef int info ;


 int CTL_VM ;
 int UV__ERR (int ) ;
 int VM_UVMEXP ;
 int _SC_PAGESIZE ;
 int errno ;
 int sysconf (int ) ;
 scalar_t__ sysctl (int*,int,struct uvmexp*,size_t*,int *,int ) ;

uint64_t uv_get_free_memory(void) {
  struct uvmexp info;
  size_t size = sizeof(info);
  int which[] = {CTL_VM, VM_UVMEXP};

  if (sysctl(which, 2, &info, &size, ((void*)0), 0))
    return UV__ERR(errno);

  return (uint64_t) info.free * sysconf(_SC_PAGESIZE);
}
