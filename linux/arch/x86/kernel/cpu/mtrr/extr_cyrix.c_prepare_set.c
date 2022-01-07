
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CX86_CCR3 ;
 int X86_CR0_CD ;
 int X86_CR4_PGE ;
 int X86_FEATURE_PGE ;
 int __read_cr4 () ;
 int __write_cr4 (int) ;
 scalar_t__ boot_cpu_has (int ) ;
 int ccr3 ;
 int cr4 ;
 int getCx86 (int ) ;
 int read_cr0 () ;
 int setCx86 (int ,int) ;
 int wbinvd () ;
 int write_cr0 (int) ;

__attribute__((used)) static void prepare_set(void)
{
 u32 cr0;


 if (boot_cpu_has(X86_FEATURE_PGE)) {
  cr4 = __read_cr4();
  __write_cr4(cr4 & ~X86_CR4_PGE);
 }





 cr0 = read_cr0() | X86_CR0_CD;
 wbinvd();
 write_cr0(cr0);
 wbinvd();


 ccr3 = getCx86(CX86_CCR3);


 setCx86(CX86_CCR3, (ccr3 & 0x0f) | 0x10);
}
