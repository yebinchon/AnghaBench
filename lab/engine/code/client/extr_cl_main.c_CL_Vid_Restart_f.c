
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; int checksumFeed; scalar_t__ demorecording; } ;
struct TYPE_5__ {void* cgameStarted; void* soundRegistered; void* uiStarted; void* rendererStarted; } ;
struct TYPE_4__ {scalar_t__ integer; } ;


 scalar_t__ CA_CINEMATIC ;
 scalar_t__ CA_CONNECTED ;
 int CL_CloseAVI () ;
 int CL_InitCGame () ;
 int CL_InitRef () ;
 int CL_ResetPureClientAtServer () ;
 int CL_SendPureChecksums () ;
 int CL_ShutdownCGame () ;
 int CL_ShutdownRef () ;
 int CL_ShutdownUI () ;
 int CL_StartHunkUsers (void*) ;
 int CL_StopRecord_f () ;
 scalar_t__ CL_VideoRecording () ;
 int Cvar_Set (char*,char*) ;
 int FS_CGAME_REF ;
 int FS_ClearPakReferences (int) ;
 int FS_ConditionalRestart (int ,void*) ;
 int FS_UI_REF ;
 int Hunk_Clear () ;
 int Hunk_ClearToMark () ;
 int S_StopAllSounds () ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 TYPE_1__* com_sv_running ;
 void* qfalse ;
 void* qtrue ;

void CL_Vid_Restart_f( void ) {


 if( CL_VideoRecording( ) ) {
  CL_CloseAVI( );
 }

 if(clc.demorecording)
  CL_StopRecord_f();


 S_StopAllSounds();

 if(!FS_ConditionalRestart(clc.checksumFeed, qtrue))
 {

  if(com_sv_running->integer)
  {

   Hunk_ClearToMark();
  }
  else
  {

   Hunk_Clear();
  }


  CL_ShutdownUI();

  CL_ShutdownCGame();

  CL_ShutdownRef();

  CL_ResetPureClientAtServer();

  FS_ClearPakReferences( FS_UI_REF | FS_CGAME_REF );


  cls.rendererStarted = qfalse;
  cls.uiStarted = qfalse;
  cls.cgameStarted = qfalse;
  cls.soundRegistered = qfalse;


  Cvar_Set("cl_paused", "0");


  CL_InitRef();


  CL_StartHunkUsers(qfalse);


  if(clc.state > CA_CONNECTED && clc.state != CA_CINEMATIC)
  {
   cls.cgameStarted = qtrue;
   CL_InitCGame();

   CL_SendPureChecksums();
  }
 }
}
