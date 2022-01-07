
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blast_icache32 () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static inline void blast_r4600_v1_icache32(void)
{
 unsigned long flags;

 local_irq_save(flags);
 blast_icache32();
 local_irq_restore(flags);
}
