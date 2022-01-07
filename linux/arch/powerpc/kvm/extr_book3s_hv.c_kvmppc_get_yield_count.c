
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lppaca {int yield_count; } ;
struct TYPE_3__ {scalar_t__ pinned_addr; } ;
struct TYPE_4__ {int vpa_update_lock; TYPE_1__ vpa; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int be32_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvmppc_get_yield_count(struct kvm_vcpu *vcpu)
{
 int yield_count = 0;
 struct lppaca *lppaca;

 spin_lock(&vcpu->arch.vpa_update_lock);
 lppaca = (struct lppaca *)vcpu->arch.vpa.pinned_addr;
 if (lppaca)
  yield_count = be32_to_cpu(lppaca->yield_count);
 spin_unlock(&vcpu->arch.vpa_update_lock);
 return yield_count;
}
