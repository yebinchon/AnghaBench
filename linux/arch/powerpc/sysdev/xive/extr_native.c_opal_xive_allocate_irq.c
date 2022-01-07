
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s64 ;


 int OPAL_RESOURCE ;
 int opal_xive_allocate_irq_raw (int ) ;

__attribute__((used)) static s64 opal_xive_allocate_irq(u32 chip_id)
{
 s64 irq = opal_xive_allocate_irq_raw(chip_id);





 return irq == 0xffffffff ? OPAL_RESOURCE : irq;
}
