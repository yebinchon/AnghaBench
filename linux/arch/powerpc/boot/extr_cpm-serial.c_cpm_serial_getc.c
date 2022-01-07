
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* addr; int sc; } ;


 int cpm_serial_tstc () ;
 int eieio () ;
 TYPE_1__* rbdf ;
 int sync () ;

__attribute__((used)) static unsigned char cpm_serial_getc(void)
{
 unsigned char c;

 while (!cpm_serial_tstc())
  ;

 sync();
 c = rbdf->addr[0];
 eieio();
 rbdf->sc |= 0x8000;

 return c;
}
