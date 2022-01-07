
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 int CVAR_SERVERINFO ;
 int Com_Printf (char*) ;
 int Cvar_InfoString (int ) ;
 int Info_Print (int ) ;
 TYPE_1__* com_sv_running ;

__attribute__((used)) static void SV_Serverinfo_f( void ) {

 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 Com_Printf ("Server info settings:\n");
 Info_Print ( Cvar_InfoString( CVAR_SERVERINFO ) );
}
