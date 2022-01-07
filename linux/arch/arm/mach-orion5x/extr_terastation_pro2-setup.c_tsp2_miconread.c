
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR ;
 int RX ;
 int UART1_REG (int ) ;
 unsigned char UART_LSR_DR ;
 unsigned char readl (int ) ;
 int udelay (int) ;

__attribute__((used)) static int tsp2_miconread(unsigned char *buf, int count)
{
 int i;
 int timeout;

 for (i = 0; i < count; i++) {
  timeout = 10;

  while (!(readl(UART1_REG(LSR)) & UART_LSR_DR)) {
   if (--timeout == 0)
    break;
   udelay(1000);
  }

  if (timeout == 0)
   break;
  buf[i] = readl(UART1_REG(RX));
 }


 return i;
}
