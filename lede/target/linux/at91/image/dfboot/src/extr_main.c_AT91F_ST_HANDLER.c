
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ST_SR; } ;
struct TYPE_7__ {int (* CtlTempoTick ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int (* Handler ) (TYPE_1__*,unsigned int volatile) ;int eot; } ;
typedef int AT91PS_USART ;


 scalar_t__ AT91C_BASE_DBGU ;
 TYPE_5__* AT91C_BASE_ST ;
 int * AT91C_DBGU_CR ;
 unsigned int* AT91C_DBGU_CSR ;
 unsigned int volatile AT91C_US_ENDRX ;
 unsigned int volatile AT91C_US_ENDTX ;
 int AT91C_US_RSTSTA ;
 unsigned int volatile AT91C_US_RXBUFF ;
 unsigned int volatile AT91C_US_RXRDY ;
 unsigned int volatile AT91C_US_TIMEOUT ;
 unsigned int volatile AT91C_US_TXEMPTY ;
 unsigned int volatile AT91C_US_TXRDY ;
 int AT91F_US_DisableIt (int ,unsigned int volatile) ;
 int AT91F_US_EnableIt (int ,unsigned int volatile) ;
 unsigned int AT91F_US_Error (int ) ;
 int StTick ;
 TYPE_3__ ctlTempo ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_1__*,unsigned int volatile) ;
 TYPE_1__ svcXmodem ;

void AT91F_ST_HANDLER(void)
{
 volatile unsigned int csr = *AT91C_DBGU_CSR;




 if (AT91C_BASE_ST->ST_SR & 0x01) {
  StTick++;
  ctlTempo.CtlTempoTick(&ctlTempo);
  return;
 }
}
