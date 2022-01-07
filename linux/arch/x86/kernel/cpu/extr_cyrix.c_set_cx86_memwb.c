
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CX86_CCR2 ;
 int X86_CR0_NW ;
 int getCx86 (int ) ;
 int pr_info (char*) ;
 int read_cr0 () ;
 int setCx86 (int ,int) ;
 int write_cr0 (int) ;

__attribute__((used)) static void set_cx86_memwb(void)
{
 pr_info("Enable Memory-Write-back mode on Cyrix/NSC processor.\n");


 setCx86(CX86_CCR2, getCx86(CX86_CCR2) & ~0x04);

 write_cr0(read_cr0() | X86_CR0_NW);

 setCx86(CX86_CCR2, getCx86(CX86_CCR2) | 0x14);
}
