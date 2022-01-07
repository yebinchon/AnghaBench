
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_EXTERNAL_BASE ;
 int IRQ_INTERNAL_BASE ;
 int do_IRQ (int) ;
 int ext_irq_end ;
 int ext_irq_start ;
 scalar_t__ is_ext_irq_cascaded ;

__attribute__((used)) static inline void handle_internal(int intbit)
{
 if (is_ext_irq_cascaded &&
     intbit >= ext_irq_start && intbit <= ext_irq_end)
  do_IRQ(intbit - ext_irq_start + IRQ_EXTERNAL_BASE);
 else
  do_IRQ(intbit + IRQ_INTERNAL_BASE);
}
