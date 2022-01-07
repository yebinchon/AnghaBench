
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; int checksumFeed; void* downloadRestart; void* cURLDisconnected; void* cURLUsed; } ;
struct TYPE_3__ {int cgameStarted; } ;


 scalar_t__ CA_LOADING ;
 int CL_AddReliableCommand (char*,void*) ;
 int CL_FlushMemory () ;
 int CL_InitCGame () ;
 int CL_Reconnect_f () ;
 int CL_SendPureChecksums () ;
 int CL_WritePacket () ;
 int CL_cURL_Shutdown () ;
 int Com_EventLoop () ;
 int Cvar_Set (char*,char*) ;
 int FS_Restart (int ) ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;
 void* qfalse ;
 int qtrue ;

void CL_DownloadsComplete( void ) {
 if (clc.downloadRestart) {
  clc.downloadRestart = qfalse;

  FS_Restart(clc.checksumFeed);


  CL_AddReliableCommand("donedl", qfalse);



  return;
 }


 clc.state = CA_LOADING;


 Com_EventLoop();



 if ( clc.state != CA_LOADING ) {
  return;
 }


 Cvar_Set("r_uiFullScreen", "0");





 CL_FlushMemory();


 cls.cgameStarted = qtrue;
 CL_InitCGame();


 CL_SendPureChecksums();

 CL_WritePacket();
 CL_WritePacket();
 CL_WritePacket();
}
