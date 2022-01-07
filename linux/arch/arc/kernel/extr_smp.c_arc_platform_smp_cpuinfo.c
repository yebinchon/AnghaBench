
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ info; } ;


 TYPE_1__ plat_smp_ops ;

const char *arc_platform_smp_cpuinfo(void)
{
 return plat_smp_ops.info ? : "";
}
