
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int AR2315_AHB_ERR0 ;
 int AR2315_AHB_ERR1 ;
 int AR2315_AHB_ERROR_DET ;
 int IRQ_HANDLED ;
 int ar2315_rst_reg_read (int ) ;
 int ar2315_rst_reg_write (int ,int ) ;
 int machine_restart (char*) ;
 int pr_emerg (char*) ;

__attribute__((used)) static irqreturn_t ar2315_ahb_err_handler(int cpl, void *dev_id)
{
 ar2315_rst_reg_write(AR2315_AHB_ERR0, AR2315_AHB_ERROR_DET);
 ar2315_rst_reg_read(AR2315_AHB_ERR1);

 pr_emerg("AHB fatal error\n");
 machine_restart("AHB error");

 return IRQ_HANDLED;
}
