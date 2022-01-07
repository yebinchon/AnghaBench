
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_usage {int nice_ticks; int idle_ticks; int system_ticks; int user_ticks; } ;
typedef int mach_msg_type_number_t ;
typedef int host_info_t ;
struct TYPE_2__ {int * cpu_ticks; } ;
typedef TYPE_1__ host_cpu_load_info_data_t ;


 size_t CPU_STATE_IDLE ;
 size_t CPU_STATE_NICE ;
 size_t CPU_STATE_SYSTEM ;
 size_t CPU_STATE_USER ;
 int HOST_CPU_LOAD_INFO ;
 int HOST_CPU_LOAD_INFO_COUNT ;
 int host_statistics (int ,int ,int ,int *) ;
 int mach_host_self () ;

struct cpu_usage get_cpu_usage() {
    host_cpu_load_info_data_t load;
    mach_msg_type_number_t fuck = HOST_CPU_LOAD_INFO_COUNT;
    host_statistics(mach_host_self(), HOST_CPU_LOAD_INFO, (host_info_t) &load, &fuck);
    struct cpu_usage usage;
    usage.user_ticks = load.cpu_ticks[CPU_STATE_USER];
    usage.system_ticks = load.cpu_ticks[CPU_STATE_SYSTEM];
    usage.idle_ticks = load.cpu_ticks[CPU_STATE_IDLE];
    usage.nice_ticks = load.cpu_ticks[CPU_STATE_NICE];
    return usage;
}
