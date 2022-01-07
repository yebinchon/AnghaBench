
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ current_pid; int lpp; } ;
struct TYPE_3__ {scalar_t__ pid; } ;


 TYPE_2__ S390_lowcore ;
 TYPE_1__* current ;
 int lpp (int *) ;
 scalar_t__ test_facility (int) ;

void arch_setup_new_exec(void)
{
 if (S390_lowcore.current_pid != current->pid) {
  S390_lowcore.current_pid = current->pid;
  if (test_facility(40))
   lpp(&S390_lowcore.lpp);
 }
}
