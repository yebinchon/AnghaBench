
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SDCASR_REG ;
 int SDCASR_REG_STRIDE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int out_le32 (scalar_t__,unsigned int) ;
 scalar_t__ sdcasr_mapbase ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void set_astate(int cpu, unsigned int astate)
{
 unsigned long flags;


 if (unlikely(!sdcasr_mapbase))
  return;

 local_irq_save(flags);

 out_le32(sdcasr_mapbase + SDCASR_REG + SDCASR_REG_STRIDE*cpu, astate);

 local_irq_restore(flags);
}
