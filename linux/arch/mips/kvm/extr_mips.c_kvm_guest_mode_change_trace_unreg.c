
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kvm_trace_guest_mode_change ;

void kvm_guest_mode_change_trace_unreg(void)
{
 kvm_trace_guest_mode_change = 0;
}
