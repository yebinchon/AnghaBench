
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int stack_space; } ;
struct kprobe {TYPE_1__ ainsn; } ;



__attribute__((used)) static int can_optimize(struct kprobe *kp)
{
 if (kp->ainsn.stack_space < 0)
  return 0;




 if (kp->ainsn.stack_space > 255 - sizeof(struct pt_regs))
  return 0;
 return 1;
}
