
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct undef_hook {scalar_t__ instr_mask; } ;
struct insn_emulation_ops {int name; struct undef_hook* hooks; } ;


 int BUG_ON (int) ;
 int pr_notice (char*,int ) ;
 int unregister_undef_hook (struct undef_hook*) ;

__attribute__((used)) static void remove_emulation_hooks(struct insn_emulation_ops *ops)
{
 struct undef_hook *hook;

 BUG_ON(!ops->hooks);

 for (hook = ops->hooks; hook->instr_mask; hook++)
  unregister_undef_hook(hook);

 pr_notice("Removed %s emulation handler\n", ops->name);
}
