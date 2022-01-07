
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvclock_vsyscall_time_info {int dummy; } ;


 int VCLOCK_PVCLOCK ;
 int WARN_ON (int ) ;
 struct pvclock_vsyscall_time_info* pvti_cpu0_va ;
 int vclock_was_used (int ) ;

void pvclock_set_pvti_cpu0_va(struct pvclock_vsyscall_time_info *pvti)
{
 WARN_ON(vclock_was_used(VCLOCK_PVCLOCK));
 pvti_cpu0_va = pvti;
}
