
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int cs; int ip; int mcgstatus; } ;


 int IN_KERNEL ;
 int IN_KERNEL_RECOV ;
 int IN_USER ;
 scalar_t__ ex_has_fault_handler (int ) ;
 scalar_t__ mc_recoverable (int ) ;

__attribute__((used)) static int error_context(struct mce *m)
{
 if ((m->cs & 3) == 3)
  return IN_USER;
 if (mc_recoverable(m->mcgstatus) && ex_has_fault_handler(m->ip))
  return IN_KERNEL_RECOV;
 return IN_KERNEL;
}
