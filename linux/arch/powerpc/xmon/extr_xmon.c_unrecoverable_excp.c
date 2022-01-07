
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; } ;


 int MSR_RI ;

__attribute__((used)) static inline int unrecoverable_excp(struct pt_regs *regs)
{




 return ((regs->msr & MSR_RI) == 0);

}
