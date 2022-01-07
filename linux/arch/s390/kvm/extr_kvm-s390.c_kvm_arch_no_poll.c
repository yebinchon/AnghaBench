
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int halt_no_poll_steal; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
struct TYPE_4__ {int avg_steal_timer; } ;


 TYPE_2__ S390_lowcore ;
 int TICK_USEC ;
 int halt_poll_max_steal ;

bool kvm_arch_no_poll(struct kvm_vcpu *vcpu)
{

 if (S390_lowcore.avg_steal_timer * 100 / (TICK_USEC << 12) >=
     halt_poll_max_steal) {
  vcpu->stat.halt_no_poll_steal++;
  return 1;
 }
 return 0;
}
