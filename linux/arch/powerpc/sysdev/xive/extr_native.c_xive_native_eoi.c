
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int opal_int_eoi (int ) ;

__attribute__((used)) static void xive_native_eoi(u32 hw_irq)
{




 opal_int_eoi(hw_irq);
}
