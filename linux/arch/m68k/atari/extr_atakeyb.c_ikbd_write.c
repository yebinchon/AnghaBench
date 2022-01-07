
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int key_ctrl; int key_data; } ;


 int ACIA_TDRE ;
 TYPE_1__ acia ;
 int panic (char*) ;

void ikbd_write(const char *str, int len)
{
 u_char acia_stat;

 if ((len < 1) || (len > 7))
  panic("ikbd: maximum string length exceeded");
 while (len) {
  acia_stat = acia.key_ctrl;
  if (acia_stat & ACIA_TDRE) {
   acia.key_data = *str++;
   len--;
  }
 }
}
