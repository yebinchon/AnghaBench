
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pid; } ;


 TYPE_1__* current ;
 scalar_t__ in_interrupt () ;
 scalar_t__ is_global_init (TYPE_1__*) ;
 scalar_t__ kexec_should_crash (TYPE_1__*) ;
 scalar_t__ panic_on_oops ;
 scalar_t__ should_fadump_crash () ;

bool die_will_crash(void)
{
 if (should_fadump_crash())
  return 1;
 if (kexec_should_crash(current))
  return 1;
 if (in_interrupt() || panic_on_oops ||
   !current->pid || is_global_init(current))
  return 1;

 return 0;
}
