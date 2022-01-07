
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irqreturn_t ;


 int AR5312_DMA1 ;
 int AR5312_DMAADDR ;
 int AR5312_PROC1 ;
 int AR5312_PROCADDR ;
 int IRQ_HANDLED ;
 int ar5312_rst_reg_read (int ) ;
 int machine_restart (char*) ;
 int pr_emerg (char*,int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t ar5312_ahb_err_handler(int cpl, void *dev_id)
{
 u32 proc1 = ar5312_rst_reg_read(AR5312_PROC1);
 u32 proc_addr = ar5312_rst_reg_read(AR5312_PROCADDR);
 u32 dma1 = ar5312_rst_reg_read(AR5312_DMA1);
 u32 dma_addr = ar5312_rst_reg_read(AR5312_DMAADDR);

 pr_emerg("AHB interrupt: PROCADDR=0x%8.8x PROC1=0x%8.8x DMAADDR=0x%8.8x DMA1=0x%8.8x\n",
   proc_addr, proc1, dma_addr, dma1);

 machine_restart("AHB error");
 return IRQ_HANDLED;
}
