
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PIO_SODR; } ;
typedef TYPE_1__* AT91PS_PIO ;


 TYPE_1__* AT91C_BASE_PIOB ;

void green_LED_off(void)
{
 AT91PS_PIO PIOB = AT91C_BASE_PIOB;

 PIOB->PIO_SODR = (1 << 0);
}
