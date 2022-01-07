
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_sev_info {int active; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static inline bool sev_guest(struct kvm *kvm)
{





 return 0;

}
