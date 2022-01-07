
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int get_online_cpus () ;
 int hv_vm_count ;
 int put_online_cpus () ;

void kvm_hv_vm_deactivated(void)
{
 get_online_cpus();
 atomic_dec(&hv_vm_count);
 put_online_cpus();
}
