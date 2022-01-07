
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arch_hw_breakpoint {unsigned long address; unsigned long type; } ;
struct TYPE_2__ {int (* set_dabr ) (unsigned long,unsigned long) ;} ;


 unsigned long HW_BRK_TYPE_DABR ;
 int __set_dabr (unsigned long,unsigned long) ;
 TYPE_1__ ppc_md ;
 int stub1 (unsigned long,unsigned long) ;

__attribute__((used)) static inline int set_dabr(struct arch_hw_breakpoint *brk)
{
 unsigned long dabr, dabrx;

 dabr = brk->address | (brk->type & HW_BRK_TYPE_DABR);
 dabrx = ((brk->type >> 3) & 0x7);

 if (ppc_md.set_dabr)
  return ppc_md.set_dabr(dabr, dabrx);

 return __set_dabr(dabr, dabrx);
}
