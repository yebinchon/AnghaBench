
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CX86_CCR2 ;
 int CX86_CCR3 ;
 int CX86_CCR4 ;
 int getCx86 (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int setCx86 (int ,int) ;
 int set_cx86_memwb () ;
 int set_cx86_reorder () ;

__attribute__((used)) static void geode_configure(void)
{
 unsigned long flags;
 u8 ccr3;
 local_irq_save(flags);


 setCx86(CX86_CCR2, getCx86(CX86_CCR2) | 0x88);

 ccr3 = getCx86(CX86_CCR3);
 setCx86(CX86_CCR3, (ccr3 & 0x0f) | 0x10);



 setCx86(CX86_CCR4, getCx86(CX86_CCR4) | 0x38);
 setCx86(CX86_CCR3, ccr3);

 set_cx86_memwb();
 set_cx86_reorder();

 local_irq_restore(flags);
}
