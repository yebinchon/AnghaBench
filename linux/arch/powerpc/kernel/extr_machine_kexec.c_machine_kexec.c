
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {int dummy; } ;
struct TYPE_2__ {int (* machine_kexec ) (struct kimage*) ;} ;


 int __ftrace_enabled_restore (int) ;
 int __ftrace_enabled_save () ;
 int default_machine_kexec (struct kimage*) ;
 int machine_restart (int *) ;
 TYPE_1__ ppc_md ;
 int stub1 (struct kimage*) ;
 int this_cpu_disable_ftrace () ;
 int this_cpu_enable_ftrace () ;

void machine_kexec(struct kimage *image)
{
 int save_ftrace_enabled;

 save_ftrace_enabled = __ftrace_enabled_save();
 this_cpu_disable_ftrace();

 if (ppc_md.machine_kexec)
  ppc_md.machine_kexec(image);
 else
  default_machine_kexec(image);

 this_cpu_enable_ftrace();
 __ftrace_enabled_restore(save_ftrace_enabled);


 machine_restart(((void*)0));
 for(;;);
}
