
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_emulation {TYPE_1__* ops; } ;
struct TYPE_2__ {int set_hw_mode; } ;


 int EINVAL ;
 int disable_insn_hw_mode ;
 int enable_insn_hw_mode ;
 int on_each_cpu (int ,void*,int) ;

__attribute__((used)) static int run_all_cpu_set_hw_mode(struct insn_emulation *insn, bool enable)
{
 if (!insn->ops->set_hw_mode)
  return -EINVAL;
 if (enable)
  on_each_cpu(enable_insn_hw_mode, (void *)insn, 1);
 else
  on_each_cpu(disable_insn_hw_mode, (void *)insn, 1);
 return 0;
}
