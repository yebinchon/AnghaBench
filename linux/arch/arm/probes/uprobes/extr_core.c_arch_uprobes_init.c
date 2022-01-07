
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_undef_hook (int *) ;
 int uprobes_arm_break_hook ;
 int uprobes_arm_ss_hook ;

__attribute__((used)) static int arch_uprobes_init(void)
{
 register_undef_hook(&uprobes_arm_break_hook);
 register_undef_hook(&uprobes_arm_ss_hook);

 return 0;
}
