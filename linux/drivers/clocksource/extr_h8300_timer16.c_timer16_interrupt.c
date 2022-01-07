
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer16_priv {int total_cycles; scalar_t__ mapcommon; int ovf; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TISRC ;
 int bclr (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t timer16_interrupt(int irq, void *dev_id)
{
 struct timer16_priv *p = (struct timer16_priv *)dev_id;

 bclr(p->ovf, p->mapcommon + TISRC);
 p->total_cycles += 0x10000;

 return IRQ_HANDLED;
}
