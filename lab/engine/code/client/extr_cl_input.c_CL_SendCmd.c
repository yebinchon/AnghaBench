
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {scalar_t__ integer; } ;


 scalar_t__ CA_CONNECTED ;
 int CL_CreateNewCommands () ;
 int CL_ReadyToSendPacket () ;
 int CL_WritePacket () ;
 int Com_Printf (char*) ;
 TYPE_5__* cl_paused ;
 TYPE_4__* cl_showSend ;
 TYPE_3__ clc ;
 TYPE_2__* com_sv_running ;
 TYPE_1__* sv_paused ;

void CL_SendCmd( void ) {

 if ( clc.state < CA_CONNECTED ) {
  return;
 }


 if ( com_sv_running->integer && sv_paused->integer && cl_paused->integer ) {
  return;
 }


 CL_CreateNewCommands();


 if ( !CL_ReadyToSendPacket() ) {
  if ( cl_showSend->integer ) {
   Com_Printf( ". " );
  }
  return;
 }

 CL_WritePacket();
}
