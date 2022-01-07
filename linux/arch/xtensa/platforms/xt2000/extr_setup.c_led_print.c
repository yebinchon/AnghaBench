
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ XT2000_LED_ADDR ;

__attribute__((used)) static void led_print (int f, char *s)
{
 unsigned long* led_addr = (unsigned long*) (XT2000_LED_ADDR + 0xE0) + f;
 int i;
 for (i = f; i < 8; i++)
  if ((*led_addr++ = *s++) == 0)
      break;
}
