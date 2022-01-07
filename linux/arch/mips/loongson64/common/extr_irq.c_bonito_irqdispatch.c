
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LOONGSON_INTEN ;
 int LOONGSON_INTISR ;
 scalar_t__ LOONGSON_IRQ_BASE ;
 int __ffs (int) ;
 int do_IRQ (scalar_t__) ;
 int udelay (int) ;

void bonito_irqdispatch(void)
{
 u32 int_status;
 int i;


 int_status = LOONGSON_INTISR;
 while (int_status & (1 << 10)) {
  udelay(1);
  int_status = LOONGSON_INTISR;
 }


 int_status = LOONGSON_INTISR & LOONGSON_INTEN;

 if (int_status) {
  i = __ffs(int_status);
  do_IRQ(LOONGSON_IRQ_BASE + i);
 }
}
