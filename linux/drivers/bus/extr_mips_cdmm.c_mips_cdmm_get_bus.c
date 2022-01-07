
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_bus {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 struct mips_cdmm_bus* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int cpu_has_cdmm ;
 struct mips_cdmm_bus* kzalloc (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct mips_cdmm_bus mips_cdmm_boot_bus ;
 int mips_cdmm_buses ;
 struct mips_cdmm_bus** per_cpu_ptr (int *,unsigned int) ;
 unsigned int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct mips_cdmm_bus *mips_cdmm_get_bus(void)
{
 struct mips_cdmm_bus *bus, **bus_p;
 unsigned long flags;
 unsigned int cpu;

 if (!cpu_has_cdmm)
  return ERR_PTR(-ENODEV);

 cpu = smp_processor_id();

 if (cpu == 0)
  return &mips_cdmm_boot_bus;


 bus_p = per_cpu_ptr(&mips_cdmm_buses, cpu);
 local_irq_save(flags);
 bus = *bus_p;

 if (unlikely(!bus)) {
  bus = kzalloc(sizeof(*bus), GFP_ATOMIC);
  if (unlikely(!bus))
   bus = ERR_PTR(-ENOMEM);
  else
   *bus_p = bus;
 }
 local_irq_restore(flags);
 return bus;
}
