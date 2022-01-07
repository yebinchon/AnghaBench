
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int sysfreq ;
struct TYPE_2__ {int bi_busfreq; int bi_ipbfreq; int bi_intfreq; int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 TYPE_1__ bd ;
 int dt_fixup_cpu_clocks (int ,int,int) ;
 int dt_fixup_mac_addresses (int ) ;
 int dt_fixup_memory (int ,int ) ;
 int dt_xlate_reg (void*,int ,void*,int *) ;
 void* find_node_by_compatible (int *,char*) ;
 void* find_node_by_devtype (int *,char*) ;
 int in_8 (void*) ;
 int setprop (void*,char*,int*,int) ;

__attribute__((used)) static void platform_fixups(void)
{
 void *soc, *reg;
 int div;
 u32 sysfreq;


 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);
 dt_fixup_mac_addresses(bd.bi_enetaddr);
 dt_fixup_cpu_clocks(bd.bi_intfreq, bd.bi_busfreq / 4, bd.bi_busfreq);





 soc = find_node_by_devtype(((void*)0), "soc");
 if (!soc)
  soc = find_node_by_compatible(((void*)0), "fsl,mpc5200-immr");
 if (!soc)
  soc = find_node_by_compatible(((void*)0), "fsl,mpc5200b-immr");
 if (soc) {
  setprop(soc, "bus-frequency", &bd.bi_ipbfreq,
   sizeof(bd.bi_ipbfreq));

  if (!dt_xlate_reg(soc, 0, (void*)&reg, ((void*)0)))
   return;
  div = in_8(reg + 0x204) & 0x0020 ? 8 : 4;
  sysfreq = bd.bi_busfreq * div;
  setprop(soc, "system-frequency", &sysfreq, sizeof(sysfreq));
 }
}
