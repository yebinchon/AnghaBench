
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getchar () ;
 int kbd_pending () ;

void kbd_flush(void)
{
 for (;;) {
  if (!kbd_pending())
   break;
  getchar();
 }
}
