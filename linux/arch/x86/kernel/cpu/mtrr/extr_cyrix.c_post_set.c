
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CX86_CCR3 ;
 int X86_CR0_CD ;
 int X86_FEATURE_PGE ;
 int __write_cr4 (int ) ;
 scalar_t__ boot_cpu_has (int ) ;
 int ccr3 ;
 int cr4 ;
 int read_cr0 () ;
 int setCx86 (int ,int ) ;
 int wbinvd () ;
 int write_cr0 (int) ;

__attribute__((used)) static void post_set(void)
{

 wbinvd();


 setCx86(CX86_CCR3, ccr3);


 write_cr0(read_cr0() & ~X86_CR0_CD);


 if (boot_cpu_has(X86_FEATURE_PGE))
  __write_cr4(cr4);
}
