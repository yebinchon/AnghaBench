
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset {int dummy; } ;
struct task_struct {int dummy; } ;


 int ENODEV ;
 int NUM_DSP_REGS ;
 scalar_t__ cpu_has_dsp ;

__attribute__((used)) static int dsp_active(struct task_struct *target,
        const struct user_regset *regset)
{
 return cpu_has_dsp ? NUM_DSP_REGS + 1 : -ENODEV;
}
