
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_register_clock (char*) ;

__attribute__((used)) static void kvm_restore_sched_clock_state(void)
{
 kvm_register_clock("primary cpu clock, resume");
}
