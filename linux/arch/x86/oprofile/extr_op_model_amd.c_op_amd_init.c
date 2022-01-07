
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct oprofile_operations {int create_files; } ;
struct TYPE_4__ {int x86; } ;
struct TYPE_3__ {int num_virt_counters; void* num_controls; void* num_counters; } ;


 void* AMD64_NUM_COUNTERS ;
 void* AMD64_NUM_COUNTERS_CORE ;
 int NUM_VIRT_COUNTERS ;
 TYPE_2__ boot_cpu_data ;
 int create_arch_files ;
 int init_ibs () ;
 int max (void*,int ) ;
 void* num_counters ;
 TYPE_1__ op_amd_spec ;
 int setup_ibs_files ;

__attribute__((used)) static int op_amd_init(struct oprofile_operations *ops)
{
 init_ibs();
 create_arch_files = ops->create_files;
 ops->create_files = setup_ibs_files;

 if (boot_cpu_data.x86 == 0x15) {
  num_counters = AMD64_NUM_COUNTERS_CORE;
 } else {
  num_counters = AMD64_NUM_COUNTERS;
 }

 op_amd_spec.num_counters = num_counters;
 op_amd_spec.num_controls = num_counters;
 op_amd_spec.num_virt_counters = max(num_counters, NUM_VIRT_COUNTERS);

 return 0;
}
