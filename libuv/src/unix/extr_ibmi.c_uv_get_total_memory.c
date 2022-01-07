
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_3__ {scalar_t__ main_storage_size; } ;
typedef TYPE_1__ SSTS0200 ;


 scalar_t__ get_ibmi_system_status (TYPE_1__*) ;

uint64_t uv_get_total_memory(void) {
  SSTS0200 rcvr;

  if (get_ibmi_system_status(&rcvr))
    return 0;

  return (uint64_t)rcvr.main_storage_size * 1024ULL;
}
