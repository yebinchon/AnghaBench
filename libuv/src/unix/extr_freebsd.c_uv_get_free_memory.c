
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int freecount ;


 int UV__ERR (int ) ;
 int _SC_PAGESIZE ;
 int errno ;
 int sysconf (int ) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

uint64_t uv_get_free_memory(void) {
  int freecount;
  size_t size = sizeof(freecount);

  if (sysctlbyname("vm.stats.vm.v_free_count", &freecount, &size, ((void*)0), 0))
    return UV__ERR(errno);

  return (uint64_t) freecount * sysconf(_SC_PAGESIZE);

}
