
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct TYPE_3__ {int int_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int V_GIF_ENABLE_MASK ;

__attribute__((used)) static inline bool vgif_enabled(struct vcpu_svm *svm)
{
 return !!(svm->vmcb->control.int_ctl & V_GIF_ENABLE_MASK);
}
