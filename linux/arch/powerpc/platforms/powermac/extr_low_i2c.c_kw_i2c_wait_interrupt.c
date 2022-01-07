
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmac_i2c_host_kw {scalar_t__ polled; } ;


 int KW_I2C_IRQ_MASK ;
 int kw_read_reg (int ) ;
 int mb () ;
 int msleep (int) ;
 int reg_isr ;

__attribute__((used)) static u8 kw_i2c_wait_interrupt(struct pmac_i2c_host_kw *host)
{
 int i, j;
 u8 isr;

 for (i = 0; i < 1000; i++) {
  isr = kw_read_reg(reg_isr) & KW_I2C_IRQ_MASK;
  if (isr != 0)
   return isr;





  if (host->polled) {
   for (j = 1; j < 100000; j++)
    mb();
  } else
   msleep(1);
 }
 return isr;
}
