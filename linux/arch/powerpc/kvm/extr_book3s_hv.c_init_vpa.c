
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lppaca {int yield_count; int __old_status; } ;
struct kvm_vcpu {int dummy; } ;


 int LPPACA_OLD_SHARED_PROC ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static void init_vpa(struct kvm_vcpu *vcpu, struct lppaca *vpa)
{
 vpa->__old_status |= LPPACA_OLD_SHARED_PROC;
 vpa->yield_count = cpu_to_be32(1);
}
