
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct insn_emulation {int current_mode; TYPE_1__* ops; } ;
typedef enum insn_emulation_mode { ____Placeholder_insn_emulation_mode } insn_emulation_mode ;
struct TYPE_3__ {int name; } ;





 int pr_notice (char*,int ) ;
 int register_emulation_hooks (TYPE_1__*) ;
 int remove_emulation_hooks (TYPE_1__*) ;
 int run_all_cpu_set_hw_mode (struct insn_emulation*,int) ;

__attribute__((used)) static int update_insn_emulation_mode(struct insn_emulation *insn,
           enum insn_emulation_mode prev)
{
 int ret = 0;

 switch (prev) {
 case 128:
  break;
 case 130:
  remove_emulation_hooks(insn->ops);
  break;
 case 129:
  if (!run_all_cpu_set_hw_mode(insn, 0))
   pr_notice("Disabled %s support\n", insn->ops->name);
  break;
 }

 switch (insn->current_mode) {
 case 128:
  break;
 case 130:
  register_emulation_hooks(insn->ops);
  break;
 case 129:
  ret = run_all_cpu_set_hw_mode(insn, 1);
  if (!ret)
   pr_notice("Enabled %s support\n", insn->ops->name);
  break;
 }

 return ret;
}
