
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PLANETCORE_KEY_CRYSTAL_HZ ;
 int PLANETCORE_KEY_KB_NVRAM ;
 int dt_fixup_memory (int ,int ) ;
 void* finddevice (char*) ;
 int getprop (void*,char*,int*,int) ;
 int ibm405gp_fixup_clocks (int,int) ;
 int ibm4xx_fixup_ebc_ranges (char*) ;
 int ibm4xx_quiesce_eth (int*,int *) ;
 int mem_size ;
 int planetcore_get_decimal (int ,int ,int*) ;
 int planetcore_set_mac_addrs (int ) ;
 int printf (char*) ;
 int setprop (void*,char*,int*,int) ;
 int table ;

__attribute__((used)) static void platform_fixups(void)
{
 u64 val;
 void *nvrtc;

 dt_fixup_memory(0, mem_size);
 planetcore_set_mac_addrs(table);

 if (!planetcore_get_decimal(table, PLANETCORE_KEY_CRYSTAL_HZ, &val)) {
  printf("No PlanetCore crystal frequency key.\r\n");
  return;
 }
 ibm405gp_fixup_clocks(val, 0xa8c000);
 ibm4xx_quiesce_eth((u32 *)0xef600800, ((void*)0));
 ibm4xx_fixup_ebc_ranges("/plb/ebc");

 if (!planetcore_get_decimal(table, PLANETCORE_KEY_KB_NVRAM, &val)) {
  printf("No PlanetCore NVRAM size key.\r\n");
  return;
 }
 nvrtc = finddevice("/plb/ebc/nvrtc@4,200000");
 if (nvrtc != ((void*)0)) {
  u32 reg[3] = { 4, 0x200000, 0};
  getprop(nvrtc, "reg", reg, 3);
  reg[2] = (val << 10) & 0xffffffff;
  setprop(nvrtc, "reg", reg, 3);
 }
}
