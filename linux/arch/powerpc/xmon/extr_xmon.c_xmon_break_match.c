
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int msr; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 int MSR_64BIT ;
 int MSR_IR ;
 int MSR_PR ;
 TYPE_1__ dabr ;
 int xmon_core (struct pt_regs*,int ) ;

__attribute__((used)) static int xmon_break_match(struct pt_regs *regs)
{
 if ((regs->msr & (MSR_IR|MSR_PR|MSR_64BIT)) != (MSR_IR|MSR_64BIT))
  return 0;
 if (dabr.enabled == 0)
  return 0;
 xmon_core(regs, 0);
 return 1;
}
