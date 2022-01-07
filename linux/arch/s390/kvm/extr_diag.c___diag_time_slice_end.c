
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int diagnose_44; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;


 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 int kvm_vcpu_on_spin (struct kvm_vcpu*,int) ;

__attribute__((used)) static int __diag_time_slice_end(struct kvm_vcpu *vcpu)
{
 VCPU_EVENT(vcpu, 5, "%s", "diag time slice end");
 vcpu->stat.diagnose_44++;
 kvm_vcpu_on_spin(vcpu, 1);
 return 0;
}
