
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {TYPE_2__* vmcb; } ;
struct TYPE_4__ {int dr6; } ;
struct TYPE_5__ {TYPE_1__ save; } ;


 TYPE_3__* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static u64 svm_get_dr6(struct kvm_vcpu *vcpu)
{
 return to_svm(vcpu)->vmcb->save.dr6;
}
