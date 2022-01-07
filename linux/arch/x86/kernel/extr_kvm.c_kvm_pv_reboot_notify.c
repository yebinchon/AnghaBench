
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 unsigned long SYS_RESTART ;
 int kvm_pv_guest_cpu_reboot ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static int kvm_pv_reboot_notify(struct notifier_block *nb,
    unsigned long code, void *unused)
{
 if (code == SYS_RESTART)
  on_each_cpu(kvm_pv_guest_cpu_reboot, ((void*)0), 1);
 return NOTIFY_DONE;
}
