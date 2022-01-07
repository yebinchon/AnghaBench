
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ CA_CONNECTED ;
 int CL_AddReliableCommand (int ,int ) ;
 scalar_t__ CL_CheckPaused () ;
 int CVAR_USERINFO ;
 int Cvar_InfoString (int) ;
 TYPE_1__ clc ;
 int cvar_modifiedFlags ;
 int qfalse ;
 int va (char*,int ) ;

void CL_CheckUserinfo( void ) {

 if(clc.state < CA_CONNECTED)
  return;


 if(CL_CheckPaused())
  return;


 if(cvar_modifiedFlags & CVAR_USERINFO)
 {
  cvar_modifiedFlags &= ~CVAR_USERINFO;
  CL_AddReliableCommand(va("userinfo \"%s\"", Cvar_InfoString( CVAR_USERINFO ) ), qfalse);
 }
}
