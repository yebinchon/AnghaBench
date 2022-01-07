
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CX86_CCR3 ;
 int CX86_PCR0 ;
 int getCx86 (int ) ;
 int pr_info (char*) ;
 int setCx86 (int ,int) ;

__attribute__((used)) static void set_cx86_reorder(void)
{
 u8 ccr3;

 pr_info("Enable Memory access reorder on Cyrix/NSC processor.\n");
 ccr3 = getCx86(CX86_CCR3);
 setCx86(CX86_CCR3, (ccr3 & 0x0f) | 0x10);


 setCx86(CX86_PCR0, getCx86(CX86_PCR0) & ~0x80);

 ccr3 |= 0xe0;
 setCx86(CX86_CCR3, ccr3);
}
