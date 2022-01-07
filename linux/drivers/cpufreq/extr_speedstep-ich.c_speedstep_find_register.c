
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int pci_read_config_dword (int ,int,int*) ;
 int pmbase ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;
 int speedstep_chipset_dev ;

__attribute__((used)) static int speedstep_find_register(void)
{
 if (!speedstep_chipset_dev)
  return -ENODEV;


 pci_read_config_dword(speedstep_chipset_dev, 0x40, &pmbase);
 if (!(pmbase & 0x01)) {
  pr_err("could not find speedstep register\n");
  return -ENODEV;
 }

 pmbase &= 0xFFFFFFFE;
 if (!pmbase) {
  pr_err("could not find speedstep register\n");
  return -ENODEV;
 }

 pr_debug("pmbase is 0x%x\n", pmbase);
 return 0;
}
