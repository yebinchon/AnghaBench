
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HW_EVENT_GDROM_CMD ;
 int HW_EVENT_GDROM_DMA ;
 int free_irq (int ,int *) ;
 int gd ;
 int gdrom_command_interrupt ;
 int gdrom_dma_interrupt ;
 int request_irq (int ,int ,int ,char*,int *) ;

__attribute__((used)) static int gdrom_set_interrupt_handlers(void)
{
 int err;

 err = request_irq(HW_EVENT_GDROM_CMD, gdrom_command_interrupt,
  0, "gdrom_command", &gd);
 if (err)
  return err;
 err = request_irq(HW_EVENT_GDROM_DMA, gdrom_dma_interrupt,
  0, "gdrom_dma", &gd);
 if (err)
  free_irq(HW_EVENT_GDROM_CMD, &gd);
 return err;
}
