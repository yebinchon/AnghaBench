
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int markeins_led (char*) ;
 int sprintf (char*,char*,int) ;

void markeins_led_hex(u32 val)
{
 char str[10];

 sprintf(str, "%08x", val);
 markeins_led(str);
}
