
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int MCI_ARGR; unsigned int MCI_CMDR; unsigned int MCI_SR; } ;
typedef int AT91PS_MciDevice ;


 TYPE_1__* AT91C_BASE_MCI ;
 int AT91C_CMD_SEND_OK ;
 unsigned int AT91C_MCI_CMDRDY ;
 unsigned int AT91C_MCI_RCRCE ;
 int AT91C_MCI_SR_ERROR ;
 unsigned int AT91C_MMC_SEND_OP_COND_CMD ;
 unsigned int AT91C_SDCARD_APP_OP_COND_CMD ;

int AT91F_MCI_SendCommand (
 AT91PS_MciDevice pMCI_Device,
 unsigned int Cmd,
 unsigned int Arg)
{
 unsigned int error,status;



    AT91C_BASE_MCI->MCI_ARGR = Arg;
    AT91C_BASE_MCI->MCI_CMDR = Cmd;


 do
 {
  status = AT91C_BASE_MCI->MCI_SR;

 }
 while( !(status & AT91C_MCI_CMDRDY) );


    error = (AT91C_BASE_MCI->MCI_SR) & AT91C_MCI_SR_ERROR;
 if(error != 0 )
 {

  if ( (Cmd != AT91C_SDCARD_APP_OP_COND_CMD) && (Cmd != AT91C_MMC_SEND_OP_COND_CMD) )
   return ((AT91C_BASE_MCI->MCI_SR) & AT91C_MCI_SR_ERROR);
  else
  {
   if (error != AT91C_MCI_RCRCE)
    return ((AT91C_BASE_MCI->MCI_SR) & AT91C_MCI_SR_ERROR);
  }
 }
    return AT91C_CMD_SEND_OK;
}
