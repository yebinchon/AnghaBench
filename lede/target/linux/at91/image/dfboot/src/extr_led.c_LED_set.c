
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int PIO_SODR; unsigned int PIO_CODR; } ;
typedef TYPE_1__* AT91PS_PIO ;


 TYPE_1__* AT91C_BASE_PIOB ;

void LED_set(unsigned int led)
{
 AT91PS_PIO PIOB = AT91C_BASE_PIOB;
 PIOB->PIO_SODR = (led ^ 0x7) & 0x7;
 PIOB->PIO_CODR = led & 0x7;
}
