
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wdt_timer; int wdt_lock; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int DBSR_MRR ;
 int SPRN_DBSR ;
 int kvmppc_watchdog_func ;
 int mtspr (int ,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int kvmppc_subarch_vcpu_init(struct kvm_vcpu *vcpu)
{

 spin_lock_init(&vcpu->arch.wdt_lock);
 timer_setup(&vcpu->arch.wdt_timer, kvmppc_watchdog_func, 0);





 mtspr(SPRN_DBSR, DBSR_MRR);
 return 0;
}
