
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 scalar_t__ UART_LSR ;
 int UART_LSR_DR ;
 char UART_LSR_TEMT ;
 char UART_LSR_THRE ;
 scalar_t__ UART_RX ;
 scalar_t__ UART_TX ;
 scalar_t__ avr_addr ;
 int in_8 (scalar_t__) ;
 int msleep (int) ;
 int out_8 (scalar_t__,char const) ;
 int printk (char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static void wd_stop(struct work_struct *unused)
{
 const char string[] = "AAAAFFFFJJJJ>>>>VVVV>>>>ZZZZVVVVKKKK";
 int i = 0, rescue = 8;
 int len = strlen(string);

 while (rescue--) {
  int j;
  char lsr = in_8(avr_addr + UART_LSR);

  if (lsr & (UART_LSR_THRE | UART_LSR_TEMT)) {
   for (j = 0; j < 16 && i < len; j++, i++)
    out_8(avr_addr + UART_TX, string[i]);
   if (i == len) {


    msleep(7);
    printk("linkstation: disarming the AVR watchdog: ");
    while (in_8(avr_addr + UART_LSR) & UART_LSR_DR)
     printk("%c", in_8(avr_addr + UART_RX));
    break;
   }
  }
  msleep(17);
 }
 printk("\n");
}
