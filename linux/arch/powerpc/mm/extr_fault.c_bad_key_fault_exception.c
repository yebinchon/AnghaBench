
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int _exception_pkey (struct pt_regs*,unsigned long,int) ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static int bad_key_fault_exception(struct pt_regs *regs, unsigned long address,
        int pkey)
{





 if (!user_mode(regs))
  return SIGSEGV;

 _exception_pkey(regs, address, pkey);

 return 0;
}
