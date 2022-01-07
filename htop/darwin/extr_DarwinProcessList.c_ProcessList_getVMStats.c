
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_statistics_t ;
typedef int mach_msg_type_number_t ;
typedef int host_info_t ;


 int CRT_fatalError (char*) ;
 int HOST_VM_INFO ;
 int HOST_VM_INFO_COUNT ;
 scalar_t__ host_statistics (int ,int ,int ,int *) ;
 int mach_host_self () ;

void ProcessList_getVMStats(vm_statistics_t p) {
    mach_msg_type_number_t info_size = HOST_VM_INFO_COUNT;

    if (host_statistics(mach_host_self(), HOST_VM_INFO, (host_info_t)p, &info_size) != 0)
       CRT_fatalError("Unable to retrieve VM statistics\n");
}
