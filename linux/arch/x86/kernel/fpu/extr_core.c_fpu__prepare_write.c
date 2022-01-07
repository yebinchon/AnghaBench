
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpu {int dummy; } ;
struct TYPE_3__ {struct fpu fpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int WARN_ON_FPU (int) ;
 int __fpu_invalidate_fpregs_state (struct fpu*) ;
 TYPE_2__* current ;

void fpu__prepare_write(struct fpu *fpu)
{




 WARN_ON_FPU(fpu == &current->thread.fpu);


 __fpu_invalidate_fpregs_state(fpu);
}
