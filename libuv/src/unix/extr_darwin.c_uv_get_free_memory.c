
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ free_count; } ;
typedef TYPE_1__ vm_statistics_data_t ;
typedef int uint64_t ;
typedef int mach_msg_type_number_t ;
typedef int integer_t ;
typedef int info ;
typedef int host_info_t ;


 int HOST_VM_INFO ;
 scalar_t__ KERN_SUCCESS ;
 int UV_EINVAL ;
 int _SC_PAGESIZE ;
 scalar_t__ host_statistics (int ,int ,int ,int*) ;
 int mach_host_self () ;
 int sysconf (int ) ;

uint64_t uv_get_free_memory(void) {
  vm_statistics_data_t info;
  mach_msg_type_number_t count = sizeof(info) / sizeof(integer_t);

  if (host_statistics(mach_host_self(), HOST_VM_INFO,
                      (host_info_t)&info, &count) != KERN_SUCCESS) {
    return UV_EINVAL;
  }

  return (uint64_t) info.free_count * sysconf(_SC_PAGESIZE);
}
