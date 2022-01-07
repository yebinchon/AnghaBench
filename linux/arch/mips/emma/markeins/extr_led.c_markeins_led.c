
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LED_BASE ;
 int emma2rh_in32 (int) ;
 int emma2rh_out8 (scalar_t__,char const) ;
 int markeins_led_clear () ;
 int strlen (char const*) ;

void markeins_led(const char *str)
{
 int i;
 int len = strlen(str);

 markeins_led_clear();
 if (len > 8)
  len = 8;

 if (emma2rh_in32(0xb0000800) & (0x1 << 18))
  for (i = 0; i < len; i++)
   emma2rh_out8(LED_BASE + i, str[i]);
 else
  for (i = 0; i < len; i++)
   emma2rh_out8(LED_BASE + (i & 4) + (3 - (i & 3)),
         str[i]);
}
