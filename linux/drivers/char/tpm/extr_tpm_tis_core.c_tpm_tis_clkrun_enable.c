
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_tis_data {int clkrun_enabled; scalar_t__ ilb_base_addr; } ;
struct tpm_chip {int dev; } ;


 int CONFIG_X86 ;
 int IS_ENABLED (int ) ;
 int LPC_CLKRUN_EN ;
 scalar_t__ LPC_CNTRL_OFFSET ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int is_bsw () ;
 int outb (int,int) ;

__attribute__((used)) static void tpm_tis_clkrun_enable(struct tpm_chip *chip, bool value)
{
 struct tpm_tis_data *data = dev_get_drvdata(&chip->dev);
 u32 clkrun_val;

 if (!IS_ENABLED(CONFIG_X86) || !is_bsw() ||
     !data->ilb_base_addr)
  return;

 if (value) {
  data->clkrun_enabled++;
  if (data->clkrun_enabled > 1)
   return;
  clkrun_val = ioread32(data->ilb_base_addr + LPC_CNTRL_OFFSET);


  clkrun_val &= ~LPC_CLKRUN_EN;
  iowrite32(clkrun_val, data->ilb_base_addr + LPC_CNTRL_OFFSET);





  outb(0xCC, 0x80);
 } else {
  data->clkrun_enabled--;
  if (data->clkrun_enabled)
   return;

  clkrun_val = ioread32(data->ilb_base_addr + LPC_CNTRL_OFFSET);


  clkrun_val |= LPC_CLKRUN_EN;
  iowrite32(clkrun_val, data->ilb_base_addr + LPC_CNTRL_OFFSET);





  outb(0xCC, 0x80);
 }
}
