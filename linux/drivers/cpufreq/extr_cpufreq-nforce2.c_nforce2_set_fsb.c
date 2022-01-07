
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EINVAL ;
 int NFORCE2_DELAY ;
 unsigned int NFORCE2_MIN_FSB ;
 int NFORCE2_PLLADR ;
 int NFORCE2_PLLENABLE ;
 unsigned int max_fsb ;
 int mdelay (int ) ;
 unsigned int min_fsb ;
 int nforce2_calc_pll (unsigned int) ;
 int nforce2_dev ;
 unsigned int nforce2_fsb_read (int ) ;
 int nforce2_write_pll (int) ;
 int pci_read_config_byte (int ,int ,int *) ;
 int pci_write_config_byte (int ,int ,int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int nforce2_set_fsb(unsigned int fsb)
{
 u32 temp = 0;
 unsigned int tfsb;
 int diff;
 int pll = 0;

 if ((fsb > max_fsb) || (fsb < NFORCE2_MIN_FSB)) {
  pr_err("FSB %d is out of range!\n", fsb);
  return -EINVAL;
 }

 tfsb = nforce2_fsb_read(0);
 if (!tfsb) {
  pr_err("Error while reading the FSB\n");
  return -EINVAL;
 }


 pci_read_config_byte(nforce2_dev, NFORCE2_PLLENABLE, (u8 *)&temp);
 if (!temp) {
  pll = nforce2_calc_pll(tfsb);

  if (pll < 0)
   return -EINVAL;

  nforce2_write_pll(pll);
 }


 temp = 0x01;
 pci_write_config_byte(nforce2_dev, NFORCE2_PLLENABLE, (u8)temp);

 diff = tfsb - fsb;

 if (!diff)
  return 0;

 while ((tfsb != fsb) && (tfsb <= max_fsb) && (tfsb >= min_fsb)) {
  if (diff < 0)
   tfsb++;
  else
   tfsb--;


  pll = nforce2_calc_pll(tfsb);
  if (pll == -1)
   return -EINVAL;

  nforce2_write_pll(pll);



 }

 temp = 0x40;
 pci_write_config_byte(nforce2_dev, NFORCE2_PLLADR, (u8)temp);

 return 0;
}
