
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int icache_size; int dcache_size; } ;


 int __flush_dcache (int ,int ) ;
 int __flush_icache (int ,int ) ;
 TYPE_1__ cpuinfo ;

void flush_cache_all(void)
{
 __flush_dcache(0, cpuinfo.dcache_size);
 __flush_icache(0, cpuinfo.icache_size);
}
