
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int hflags; } ;
struct TYPE_8__ {TYPE_3__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_2__* vmcb; } ;
struct TYPE_5__ {int int_ctl; } ;
struct TYPE_6__ {TYPE_1__ control; } ;


 int HF_GIF_MASK ;
 int V_GIF_MASK ;
 scalar_t__ vgif_enabled (struct vcpu_svm*) ;

__attribute__((used)) static inline bool gif_set(struct vcpu_svm *svm)
{
 if (vgif_enabled(svm))
  return !!(svm->vmcb->control.int_ctl & V_GIF_MASK);
 else
  return !!(svm->vcpu.arch.hflags & HF_GIF_MASK);
}
