
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int EMMA2RH_BHIF_INT_EN_0 ;
 int EMMA2RH_BHIF_INT_EN_1 ;
 int EMMA2RH_BHIF_INT_EN_2 ;
 int EMMA2RH_BHIF_INT_ST_0 ;
 int EMMA2RH_BHIF_INT_ST_1 ;
 int EMMA2RH_BHIF_INT_ST_2 ;
 int EMMA2RH_BHIF_SW_INT ;
 int EMMA2RH_BHIF_SW_INT_EN ;
 int EMMA2RH_GPIO_CASCADE ;
 int EMMA2RH_GPIO_INT_MASK ;
 int EMMA2RH_GPIO_INT_ST ;
 scalar_t__ EMMA2RH_GPIO_IRQ_BASE ;
 scalar_t__ EMMA2RH_IRQ_BASE ;
 unsigned long EMMA2RH_SW_CASCADE ;
 scalar_t__ EMMA2RH_SW_IRQ_BASE ;
 int do_IRQ (scalar_t__) ;
 unsigned long emma2rh_in32 (int ) ;

void emma2rh_irq_dispatch(void)
{
 u32 intStatus;
 u32 bitmask;
 u32 i;

 intStatus = emma2rh_in32(EMMA2RH_BHIF_INT_ST_0) &
      emma2rh_in32(EMMA2RH_BHIF_INT_EN_0);
 for (i = 0, bitmask = 1; i < 32; i++, bitmask <<= 1) {
  if (intStatus & bitmask) {
   do_IRQ(EMMA2RH_IRQ_BASE + i);
   return;
  }
 }

 intStatus = emma2rh_in32(EMMA2RH_BHIF_INT_ST_1) &
      emma2rh_in32(EMMA2RH_BHIF_INT_EN_1);
 for (i = 32, bitmask = 1; i < 64; i++, bitmask <<= 1) {
  if (intStatus & bitmask) {
   do_IRQ(EMMA2RH_IRQ_BASE + i);
   return;
  }
 }

 intStatus = emma2rh_in32(EMMA2RH_BHIF_INT_ST_2) &
      emma2rh_in32(EMMA2RH_BHIF_INT_EN_2);

 for (i = 64, bitmask = 1; i < 96; i++, bitmask <<= 1) {
  if (intStatus & bitmask) {
   do_IRQ(EMMA2RH_IRQ_BASE + i);
   return;
  }
 }
}
