
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_sev_info {int asid; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static inline int sev_get_asid(struct kvm *kvm)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;

 return sev->asid;
}
