
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LTQ_ASC_FSTAT ;
 int LTQ_ASC_TBUF ;
 int TXMASK ;
 int TXOFFSET ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int ltq_r32 (int ) ;
 int ltq_w8 (char,int ) ;

void prom_putchar(char c)
{
 unsigned long flags;

 local_irq_save(flags);
 do { } while ((ltq_r32(LTQ_ASC_FSTAT) & TXMASK) >> TXOFFSET);
 if (c == '\n')
  ltq_w8('\r', LTQ_ASC_TBUF);
 ltq_w8(c, LTQ_ASC_TBUF);
 local_irq_restore(flags);
}
