
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int loops_per_jiffy; } ;


 int CX86_CCR3 ;
 int CX86_CCR5 ;
 int Cx86_dir0_msb ;
 int calibrate_delay () ;
 unsigned char getCx86 (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int loops_per_jiffy ;
 int pr_info (char*) ;
 int setCx86 (int ,unsigned char) ;

__attribute__((used)) static void check_cx686_slop(struct cpuinfo_x86 *c)
{
 unsigned long flags;

 if (Cx86_dir0_msb == 3) {
  unsigned char ccr3, ccr5;

  local_irq_save(flags);
  ccr3 = getCx86(CX86_CCR3);
  setCx86(CX86_CCR3, (ccr3 & 0x0f) | 0x10);
  ccr5 = getCx86(CX86_CCR5);
  if (ccr5 & 2)
   setCx86(CX86_CCR5, ccr5 & 0xfd);
  setCx86(CX86_CCR3, ccr3);
  local_irq_restore(flags);

  if (ccr5 & 2) {
   pr_info("Recalibrating delay loop with SLOP bit reset\n");
   calibrate_delay();
   c->loops_per_jiffy = loops_per_jiffy;
  }
 }
}
