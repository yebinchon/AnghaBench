
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALCHEMY_GPIC_INT_BASE ;
 int GPIC_CFG_IL_MASK ;
 int GPIC_CFG_IL_SET (int) ;
 int au1300_gpic_chgcfg (unsigned int,int ,int ) ;

void au1300_set_irq_priority(unsigned int irq, int p)
{
 irq -= ALCHEMY_GPIC_INT_BASE;
 au1300_gpic_chgcfg(irq, GPIC_CFG_IL_MASK, GPIC_CFG_IL_SET(p));
}
