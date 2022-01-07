
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwAllocationGranularity; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int GetSystemInfo (TYPE_1__*) ;
 int uv__allocation_granularity ;
 int uv__fd_hash_init () ;

void uv_fs_init(void) {
  SYSTEM_INFO system_info;

  GetSystemInfo(&system_info);
  uv__allocation_granularity = system_info.dwAllocationGranularity;

  uv__fd_hash_init();
}
