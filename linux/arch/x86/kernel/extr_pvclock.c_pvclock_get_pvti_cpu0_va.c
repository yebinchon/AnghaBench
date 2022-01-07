
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvclock_vsyscall_time_info {int dummy; } ;


 struct pvclock_vsyscall_time_info* pvti_cpu0_va ;

struct pvclock_vsyscall_time_info *pvclock_get_pvti_cpu0_va(void)
{
 return pvti_cpu0_va;
}
