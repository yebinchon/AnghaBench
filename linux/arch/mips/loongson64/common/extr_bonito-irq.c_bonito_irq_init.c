
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ LOONGSON_IRQ_BASE ;
 int bonito_irq_type ;
 int dma_timeout_irqaction ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (scalar_t__,int *,int ) ;
 int setup_irq (scalar_t__,int *) ;

void bonito_irq_init(void)
{
 u32 i;

 for (i = LOONGSON_IRQ_BASE; i < LOONGSON_IRQ_BASE + 32; i++)
  irq_set_chip_and_handler(i, &bonito_irq_type,
      handle_level_irq);




}
