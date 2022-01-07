
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_sev_info {int asid; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 int __sev_asid_free (int ) ;
 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static void sev_asid_free(struct kvm *kvm)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;

 __sev_asid_free(sev->asid);
}
