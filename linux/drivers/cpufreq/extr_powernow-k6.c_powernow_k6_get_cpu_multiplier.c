
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int driver_data; } ;


 int MSR_K6_EPMR ;
 scalar_t__ POWERNOW_IOPORT ;
 TYPE_1__* clock_ratio ;
 unsigned long inl (scalar_t__) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 size_t* register_to_index ;
 int wrmsr (int ,scalar_t__,int ) ;

__attribute__((used)) static int powernow_k6_get_cpu_multiplier(void)
{
 unsigned long invalue = 0;
 u32 msrval;

 local_irq_disable();

 msrval = POWERNOW_IOPORT + 0x1;
 wrmsr(MSR_K6_EPMR, msrval, 0);
 invalue = inl(POWERNOW_IOPORT + 0x8);
 msrval = POWERNOW_IOPORT + 0x0;
 wrmsr(MSR_K6_EPMR, msrval, 0);

 local_irq_enable();

 return clock_ratio[register_to_index[(invalue >> 5)&7]].driver_data;
}
