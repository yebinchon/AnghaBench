
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_trace_guest_mode_change ;

int kvm_guest_mode_change_trace_reg(void)
{
 kvm_trace_guest_mode_change = 1;
 return 0;
}
