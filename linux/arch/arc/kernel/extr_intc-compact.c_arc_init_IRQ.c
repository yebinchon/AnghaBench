
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_IENABLE ;
 int AUX_IRQ_LEV ;
 int CONFIG_ARC_COMPACT_IRQ_LEVELS ;
 unsigned int IS_ENABLED (int ) ;
 unsigned int NR_CPU_IRQS ;
 unsigned int TIMER0_IRQ ;
 int pr_info (char*,unsigned int) ;
 unsigned int read_aux_reg (int ) ;
 int write_aux_reg (int ,unsigned int) ;

void arc_init_IRQ(void)
{
 unsigned int level_mask = 0, i;


 level_mask |= IS_ENABLED(CONFIG_ARC_COMPACT_IRQ_LEVELS) << TIMER0_IRQ;





 write_aux_reg(AUX_IRQ_LEV, level_mask);

 if (level_mask)
  pr_info("Level-2 interrupts bitset %x\n", level_mask);





 for (i = TIMER0_IRQ; i < NR_CPU_IRQS; i++) {
  unsigned int ienb;

  ienb = read_aux_reg(AUX_IENABLE);
  ienb &= ~(1 << i);
  write_aux_reg(AUX_IENABLE, ienb);
 }
}
