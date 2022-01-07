
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ CA_CINEMATIC ;
 scalar_t__ CA_DISCONNECTED ;
 int Com_Error (int ,char*) ;
 int Cvar_Set (char*,char*) ;
 int ERR_DISCONNECT ;
 int SCR_StopCinematic () ;
 TYPE_1__ clc ;

void CL_Disconnect_f( void ) {
 SCR_StopCinematic();
 Cvar_Set("ui_singlePlayerActive", "0");
 if ( clc.state != CA_DISCONNECTED && clc.state != CA_CINEMATIC ) {
  Com_Error (ERR_DISCONNECT, "Disconnected from server");
 }
}
