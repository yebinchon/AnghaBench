
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long intercept; } ;
struct vmcb {TYPE_1__ control; } ;
struct vcpu_svm {int dummy; } ;


 struct vmcb* get_host_vmcb (struct vcpu_svm*) ;
 int recalc_intercepts (struct vcpu_svm*) ;

__attribute__((used)) static inline void clr_intercept(struct vcpu_svm *svm, int bit)
{
 struct vmcb *vmcb = get_host_vmcb(svm);

 vmcb->control.intercept &= ~(1ULL << bit);

 recalc_intercepts(svm);
}
