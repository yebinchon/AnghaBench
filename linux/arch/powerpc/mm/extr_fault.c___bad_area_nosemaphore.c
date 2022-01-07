
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int _exception (int,struct pt_regs*,int,unsigned long) ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static int
__bad_area_nosemaphore(struct pt_regs *regs, unsigned long address, int si_code)
{





 if (!user_mode(regs))
  return SIGSEGV;

 _exception(SIGSEGV, regs, si_code, address);

 return 0;
}
