
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_3__ {unsigned long long main_storage_size; unsigned long long current_unprotected_storage_used; } ;
typedef TYPE_1__ SSTS0200 ;


 scalar_t__ get_ibmi_system_status (TYPE_1__*) ;

uint64_t uv_get_free_memory(void) {
  SSTS0200 rcvr;

  if (get_ibmi_system_status(&rcvr))
    return 0;


  uint64_t main_storage_size = rcvr.main_storage_size;




  uint64_t current_unprotected_storage_used =
    rcvr.current_unprotected_storage_used * 1024ULL;

  uint64_t free_storage_size =
    (main_storage_size - current_unprotected_storage_used) * 1024ULL;

  return free_storage_size < 0 ? 0 : free_storage_size;
}
