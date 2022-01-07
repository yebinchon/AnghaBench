
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_6__ {scalar_t__ demorecording; } ;
struct TYPE_5__ {void* soundRegistered; void* rendererStarted; void* cgameStarted; void* uiStarted; } ;
struct TYPE_4__ {int (* Shutdown ) (void*) ;} ;


 int CL_CloseAVI () ;
 int CL_ShutdownCGame () ;
 int CL_ShutdownRef () ;
 int CL_ShutdownUI () ;
 int CL_StopRecord_f () ;
 scalar_t__ CL_VideoRecording () ;
 int CL_cURL_Shutdown () ;
 int S_DisableSounds () ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 void* qfalse ;
 TYPE_1__ re ;
 int stub1 (void*) ;

void CL_ShutdownAll(qboolean shutdownRef)
{
 if(CL_VideoRecording())
  CL_CloseAVI();

 if(clc.demorecording)
  CL_StopRecord_f();





 S_DisableSounds();

 CL_ShutdownCGame();

 CL_ShutdownUI();


 if(shutdownRef)
  CL_ShutdownRef();
 else if(re.Shutdown)
  re.Shutdown(qfalse);

 cls.uiStarted = qfalse;
 cls.cgameStarted = qfalse;
 cls.rendererStarted = qfalse;
 cls.soundRegistered = qfalse;
}
