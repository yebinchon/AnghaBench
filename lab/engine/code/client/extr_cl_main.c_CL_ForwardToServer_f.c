
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; scalar_t__ demoplaying; } ;


 scalar_t__ CA_ACTIVE ;
 int CL_AddReliableCommand (int ,int ) ;
 int Cmd_Argc () ;
 int Cmd_Args () ;
 int Com_Printf (char*) ;
 TYPE_1__ clc ;
 int qfalse ;

void CL_ForwardToServer_f( void ) {
 if ( clc.state != CA_ACTIVE || clc.demoplaying ) {
  Com_Printf ("Not connected to a server.\n");
  return;
 }


 if ( Cmd_Argc() > 1 ) {
  CL_AddReliableCommand(Cmd_Args(), qfalse);
 }
}
