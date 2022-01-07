
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ _end ;
 int bamboo_init (int *,int *) ;
 int pibs_mac0 ;
 int pibs_mac1 ;
 int read_pibs_mac () ;
 int simple_alloc_init (scalar_t__,unsigned long,int,int) ;

void platform_init(void)
{
 unsigned long end_of_ram = 0x8000000;
 unsigned long avail_ram = end_of_ram - (unsigned long)_end;

 simple_alloc_init(_end, avail_ram, 32, 64);
 read_pibs_mac();
 bamboo_init((u8 *)&pibs_mac0, (u8 *)&pibs_mac1);
}
