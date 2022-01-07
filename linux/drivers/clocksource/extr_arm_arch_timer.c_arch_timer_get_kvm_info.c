
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_timer_kvm_info {int dummy; } ;


 struct arch_timer_kvm_info arch_timer_kvm_info ;

struct arch_timer_kvm_info *arch_timer_get_kvm_info(void)
{
 return &arch_timer_kvm_info;
}
