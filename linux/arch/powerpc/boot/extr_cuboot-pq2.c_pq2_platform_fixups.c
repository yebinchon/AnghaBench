
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_busfreq; int bi_brgfreq; int bi_cpmfreq; int bi_intfreq; int bi_enet1addr; int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 TYPE_1__ bd ;
 int dt_fixup_cpu_clocks (int ,int,int) ;
 int dt_fixup_mac_addresses (int ,int ) ;
 int dt_fixup_memory (int ,int ) ;
 void* finddevice (char*) ;
 int fixup_pci () ;
 int setprop (void*,char*,int *,int) ;
 int update_cs_ranges () ;

__attribute__((used)) static void pq2_platform_fixups(void)
{
 void *node;

 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);
 dt_fixup_mac_addresses(bd.bi_enetaddr, bd.bi_enet1addr);
 dt_fixup_cpu_clocks(bd.bi_intfreq, bd.bi_busfreq / 4, bd.bi_busfreq);

 node = finddevice("/soc/cpm");
 if (node)
  setprop(node, "clock-frequency", &bd.bi_cpmfreq, 4);

 node = finddevice("/soc/cpm/brg");
 if (node)
  setprop(node, "clock-frequency", &bd.bi_brgfreq, 4);

 update_cs_ranges();
 fixup_pci();
}
