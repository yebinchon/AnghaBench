
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RM7K_CONF_TE ;
 int blast_rm7k_tcache () ;
 int clear_c0_config (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void rm7k_tc_disable(void)
{
 unsigned long flags;

 local_irq_save(flags);
 blast_rm7k_tcache();
 clear_c0_config(RM7K_CONF_TE);
 local_irq_restore(flags);
}
