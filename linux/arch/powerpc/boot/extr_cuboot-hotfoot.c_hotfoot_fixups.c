
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int regs ;
struct TYPE_2__ {int bi_procfreq; int bi_plb_busfreq; int bi_opbfreq; int bi_pci_busfreq; scalar_t__* bi_enetaddr; scalar_t__* bi_enet1addr; int bi_flashsize; int bi_memsize; int bi_memstart; } ;


 int DCRN_CPC0_UCR ;
 int NUM_REGS ;
 TYPE_1__ bd ;
 int del_node (void*) ;
 int dt_fixup_clock (char*,int) ;
 int dt_fixup_cpu_clocks (int,int,int ) ;
 int dt_fixup_mac_address_by_alias (char*,scalar_t__*) ;
 int dt_fixup_memory (int ,int ) ;
 int fatal (char*) ;
 void* finddevice (char*) ;
 int getprop (void*,char*,int*,int) ;
 int ibm4xx_quiesce_eth (int*,int*) ;
 int mfdcr (int ) ;
 int printf (char*) ;
 int setprop (void*,char*,int*,int) ;

__attribute__((used)) static void hotfoot_fixups(void)
{
 u32 uart = mfdcr(DCRN_CPC0_UCR) & 0x7f;

 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);

 dt_fixup_cpu_clocks(bd.bi_procfreq, bd.bi_procfreq, 0);
 dt_fixup_clock("/plb", bd.bi_plb_busfreq);
 dt_fixup_clock("/plb/opb", bd.bi_opbfreq);
 dt_fixup_clock("/plb/ebc", bd.bi_pci_busfreq);
 dt_fixup_clock("/plb/opb/serial@ef600300", bd.bi_procfreq / uart);
 dt_fixup_clock("/plb/opb/serial@ef600400", bd.bi_procfreq / uart);

 dt_fixup_mac_address_by_alias("ethernet0", bd.bi_enetaddr);
 dt_fixup_mac_address_by_alias("ethernet1", bd.bi_enet1addr);


 if ((bd.bi_enet1addr[0] == 0) &&
     (bd.bi_enet1addr[1] == 0) &&
     (bd.bi_enet1addr[2] == 0) &&
     (bd.bi_enet1addr[3] == 0) &&
     (bd.bi_enet1addr[4] == 0) &&
     (bd.bi_enet1addr[5] == 0)) {
  void *devp;

  printf("Trimming devtree for single serial/eth board\n");

  devp = finddevice("/plb/opb/serial@ef600300");
  if (!devp)
   fatal("Can't find node for /plb/opb/serial@ef600300");
  del_node(devp);

  devp = finddevice("/plb/opb/ethernet@ef600900");
  if (!devp)
   fatal("Can't find node for /plb/opb/ethernet@ef600900");
  del_node(devp);
 }

 ibm4xx_quiesce_eth((u32 *)0xef600800, (u32 *)0xef600900);


 if (bd.bi_flashsize < 0x800000) {
  u32 regs[NUM_REGS];
  void *devp = finddevice("/plb/ebc/nor_flash@0");
  if (!devp)
   fatal("Can't find FDT node for nor_flash!??");

  printf("Fixing devtree for 4M Flash\n");


  getprop(devp, "reg", regs, sizeof(regs));
  regs[0] = 0;
  regs[1] = 0xffc00000;
  regs[2] = 0x00400000;
  setprop(devp, "reg", regs, sizeof(regs));


  devp = finddevice("/plb/ebc/nor_flash@0/partition@0");
  if (!devp)
   fatal("Can't find FDT node for partition@0");
  getprop(devp, "reg", regs, 2*sizeof(u32));
  regs[0] -= 0x400000;
  setprop(devp, "reg", regs, 2*sizeof(u32));

  devp = finddevice("/plb/ebc/nor_flash@0/partition@1");
  if (!devp)
   fatal("Can't find FDT node for partition@1");
  getprop(devp, "reg", regs, 2*sizeof(u32));
  regs[0] -= 0x400000;
  setprop(devp, "reg", regs, 2*sizeof(u32));

  devp = finddevice("/plb/ebc/nor_flash@0/partition@2");
  if (!devp)
   fatal("Can't find FDT node for partition@2");
  getprop(devp, "reg", regs, 2*sizeof(u32));
  regs[0] -= 0x400000;
  setprop(devp, "reg", regs, 2*sizeof(u32));

  devp = finddevice("/plb/ebc/nor_flash@0/partition@3");
  if (!devp)
   fatal("Can't find FDT node for partition@3");
  getprop(devp, "reg", regs, 2*sizeof(u32));
  regs[0] -= 0x400000;
  setprop(devp, "reg", regs, 2*sizeof(u32));

  devp = finddevice("/plb/ebc/nor_flash@0/partition@4");
  if (!devp)
   fatal("Can't find FDT node for partition@4");
  getprop(devp, "reg", regs, 2*sizeof(u32));
  regs[0] -= 0x400000;
  setprop(devp, "reg", regs, 2*sizeof(u32));

  devp = finddevice("/plb/ebc/nor_flash@0/partition@6");
  if (!devp)
   fatal("Can't find FDT node for partition@6");
  getprop(devp, "reg", regs, 2*sizeof(u32));
  regs[0] -= 0x400000;
  setprop(devp, "reg", regs, 2*sizeof(u32));


  devp = finddevice("/plb/ebc/nor_flash@0/partition@5");
  if (!devp)
   fatal("Can't find FDT node for partition@5");
  del_node(devp);
 }
}
