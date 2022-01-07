
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char serdat; int serdatr; } ;


 TYPE_1__ amiga_custom ;

__attribute__((used)) static void amiga_serial_putc(char c)
{
 amiga_custom.serdat = (unsigned char)c | 0x100;
 while (!(amiga_custom.serdatr & 0x2000))
  ;
}
