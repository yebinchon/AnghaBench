
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CPU_HAS_FPU ;
 int clear_used_math () ;
 TYPE_1__ current_cpu_data ;
 int disable_fpu () ;
 scalar_t__ fpu_disabled ;
 int printk (char*) ;

__attribute__((used)) static void fpu_init(void)
{

 if (fpu_disabled && (current_cpu_data.flags & CPU_HAS_FPU)) {
  printk("FPU Disabled\n");
  current_cpu_data.flags &= ~CPU_HAS_FPU;
 }

 disable_fpu();
 clear_used_math();
}
