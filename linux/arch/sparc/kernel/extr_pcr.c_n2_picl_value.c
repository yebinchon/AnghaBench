
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {unsigned int clock_tick; } ;


 TYPE_1__ local_cpu_data () ;

__attribute__((used)) static u64 n2_picl_value(unsigned int nmi_hz)
{
 u32 delta = local_cpu_data().clock_tick / (nmi_hz << 2);

 return ((u64)((0 - delta) & 0xffffffff)) << 32;
}
