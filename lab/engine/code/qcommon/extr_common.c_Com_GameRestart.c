
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {void* integer; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 int CL_Disconnect (void*) ;
 int CL_Init () ;
 int CL_Shutdown (char*,scalar_t__,void*) ;
 int CL_StartHunkUsers (void*) ;
 int Com_ExecuteCfg () ;
 int Cvar_Restart (void*) ;
 int FS_Restart (int) ;
 int NET_Restart_f () ;
 int SV_Shutdown (char*) ;
 TYPE_2__* com_cl_running ;
 scalar_t__ com_fullyInitialized ;
 void* com_gameClientRestarting ;
 void* com_gameRestarting ;
 TYPE_1__* com_sv_running ;
 void* qfalse ;
 void* qtrue ;

void Com_GameRestart(int checksumFeed, qboolean disconnect)
{

 if(!com_gameRestarting && com_fullyInitialized)
 {
  com_gameRestarting = qtrue;
  com_gameClientRestarting = com_cl_running->integer;


  if(com_sv_running->integer)
   SV_Shutdown("Game directory changed");

  if(com_gameClientRestarting)
  {
   if(disconnect)
    CL_Disconnect(qfalse);

   CL_Shutdown("Game directory changed", disconnect, qfalse);
  }

  FS_Restart(checksumFeed);


  Cvar_Restart(qtrue);
  Com_ExecuteCfg();

  if(disconnect)
  {



   NET_Restart_f();
  }

  if(com_gameClientRestarting)
  {
   CL_Init();
   CL_StartHunkUsers(qfalse);
  }

  com_gameRestarting = qfalse;
  com_gameClientRestarting = qfalse;
 }
}
