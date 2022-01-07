
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int busfreq ;
struct TYPE_2__ {int bi_busfreq; int bi_intfreq; int bi_enet3addr; int bi_enet2addr; int bi_enet1addr; int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 TYPE_1__ bd ;
 int dt_fixup_cpu_clocks (int,unsigned long,unsigned long) ;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int dt_fixup_memory (int ,int ) ;
 void* finddevice (char*) ;
 int setprop (void*,char*,unsigned long*,int) ;

__attribute__((used)) static void mvme7100_fixups(void)
{
 void *devp;
 unsigned long busfreq = bd.bi_busfreq * 1000000;

 dt_fixup_cpu_clocks(bd.bi_intfreq * 1000000, busfreq / 4, busfreq);

 devp = finddevice("/soc@f1000000");
 if (devp)
  setprop(devp, "bus-frequency", &busfreq, sizeof(busfreq));

 devp = finddevice("/soc/serial@4500");
 if (devp)
  setprop(devp, "clock-frequency", &busfreq, sizeof(busfreq));

 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);

 dt_fixup_mac_address_by_alias("ethernet0", bd.bi_enetaddr);
 dt_fixup_mac_address_by_alias("ethernet1", bd.bi_enet1addr);
 dt_fixup_mac_address_by_alias("ethernet2", bd.bi_enet2addr);
 dt_fixup_mac_address_by_alias("ethernet3", bd.bi_enet3addr);
}
