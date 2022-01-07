
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_busfreq; int bi_intfreq; int bi_enet1addr; int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 TYPE_1__ bd ;
 int dt_fixup_cpu_clocks (int ,int,int) ;
 int dt_fixup_mac_addresses (int ,int ) ;
 int dt_fixup_memory (int ,int ) ;
 void* find_node_by_devtype (int *,char*) ;
 int setprop (void*,char*,int*,int) ;

__attribute__((used)) static void platform_fixups(void)
{
 void *tsi;

 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);
 dt_fixup_mac_addresses(bd.bi_enetaddr, bd.bi_enet1addr);
 dt_fixup_cpu_clocks(bd.bi_intfreq, bd.bi_busfreq / 4, bd.bi_busfreq);
 tsi = find_node_by_devtype(((void*)0), "tsi-bridge");
 if (tsi)
  setprop(tsi, "bus-frequency", &bd.bi_busfreq,
   sizeof(bd.bi_busfreq));
}
