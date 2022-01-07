
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc; unsigned char* addr; } ;


 int barrier () ;
 int eieio () ;
 int sync () ;
 TYPE_1__* tbdf ;

__attribute__((used)) static void cpm_serial_putc(unsigned char c)
{
 while (tbdf->sc & 0x8000)
  barrier();

 sync();

 tbdf->addr[0] = c;
 eieio();
 tbdf->sc |= 0x8000;
}
