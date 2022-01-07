
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 int INT_MAX ;
 int MAX_DOWNLOAD_BLKSIZE ;
 int SV_SendDownloadMessages () ;
 int SV_SendQueuedMessages () ;
 int Sys_Milliseconds () ;
 TYPE_1__* sv_dlRate ;

int SV_SendQueuedPackets()
{
 int numBlocks;
 int dlStart, deltaT, delayT;
 static int dlNextRound = 0;
 int timeVal = INT_MAX;


 delayT = SV_SendQueuedMessages();
 if(delayT >= 0)
  timeVal = delayT;

 if(sv_dlRate->integer)
 {


  dlStart = Sys_Milliseconds();
  deltaT = dlNextRound - dlStart;

  if(deltaT > 0)
  {
   if(deltaT < timeVal)
    timeVal = deltaT + 1;
  }
  else
  {
   numBlocks = SV_SendDownloadMessages();

   if(numBlocks)
   {

    deltaT = Sys_Milliseconds() - dlStart;

    delayT = 1000 * numBlocks * MAX_DOWNLOAD_BLKSIZE;
    delayT /= sv_dlRate->integer * 1024;

    if(delayT <= deltaT + 1)
    {







     if(timeVal > 2)
      timeVal = 2;

     dlNextRound = dlStart + deltaT + 1;
    }
    else
    {
     dlNextRound = dlStart + delayT;
     delayT -= deltaT;

     if(delayT < timeVal)
      timeVal = delayT;
    }
   }
  }
 }
 else
 {
  if(SV_SendDownloadMessages())
   timeVal = 0;
 }

 return timeVal;
}
