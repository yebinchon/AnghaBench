
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loaded_mm; } ;


 TYPE_1__ cpu_tlbstate ;
 int load_mm_cr4_irqsoff (int ) ;
 int this_cpu_read (int ) ;

__attribute__((used)) static void refresh_pce(void *ignored)
{
 load_mm_cr4_irqsoff(this_cpu_read(cpu_tlbstate.loaded_mm));
}
