
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcb {int dummy; } ;
struct TYPE_2__ {struct vmcb* hsave; } ;
struct vcpu_svm {struct vmcb* vmcb; TYPE_1__ nested; int vcpu; } ;


 scalar_t__ is_guest_mode (int *) ;

__attribute__((used)) static inline struct vmcb *get_host_vmcb(struct vcpu_svm *svm)
{
 if (is_guest_mode(&svm->vcpu))
  return svm->nested.hsave;
 else
  return svm->vmcb;
}
