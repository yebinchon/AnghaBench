
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int servername; int state; } ;


 int CVAR_USERINFO ;
 int Com_Printf (char*,...) ;
 int Cvar_InfoString (int ) ;
 int Info_Print (int ) ;
 TYPE_1__ clc ;

void CL_Clientinfo_f( void ) {
 Com_Printf( "--------- Client Information ---------\n" );
 Com_Printf( "state: %i\n", clc.state );
 Com_Printf( "Server: %s\n", clc.servername );
 Com_Printf ("User info settings:\n");
 Info_Print( Cvar_InfoString( CVAR_USERINFO ) );
 Com_Printf( "--------------------------------------\n" );
}
