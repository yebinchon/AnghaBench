
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PLANETCORE_KEY_CRYSTAL_HZ ;
 int dt_fixup_memory (int ,int ) ;
 int mem_size ;
 int planetcore_get_decimal (int ,int ,int *) ;
 int planetcore_set_mac_addrs (int ) ;
 int pq2_fixup_clocks (int ) ;
 int printf (char*) ;
 int table ;

__attribute__((used)) static void platform_fixups(void)
{
 u64 val;

 dt_fixup_memory(0, mem_size);
 planetcore_set_mac_addrs(table);

 if (!planetcore_get_decimal(table, PLANETCORE_KEY_CRYSTAL_HZ, &val)) {
  printf("No PlanetCore crystal frequency key.\r\n");
  return;
 }

 pq2_fixup_clocks(val);
}
