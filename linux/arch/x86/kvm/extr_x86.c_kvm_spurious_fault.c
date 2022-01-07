
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int kvm_rebooting ;

void kvm_spurious_fault(void)
{

 BUG_ON(!kvm_rebooting);
}
