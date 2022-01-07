
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_fp {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_3__ {int user_fp; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int memcpy (struct user_fp*,int *,int) ;

int dump_fpu(struct pt_regs *regs, struct user_fp *fpu)
{
 memcpy(fpu, &current->thread.user_fp, sizeof(*fpu));
 return 1;
}
