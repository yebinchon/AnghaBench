
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int hv_vm_count ;

bool kvm_hv_mode_active(void)
{
 return atomic_read(&hv_vm_count) != 0;
}
