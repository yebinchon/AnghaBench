
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cbuf_AddText (int ) ;
 int Cvar_Set (char*,char*) ;
 int cl_reconnectArgs ;
 int strlen (int ) ;
 int va (char*,int ) ;

void CL_Reconnect_f( void ) {
 if ( !strlen( cl_reconnectArgs ) )
  return;
 Cvar_Set("ui_singlePlayerActive", "0");
 Cbuf_AddText( va("connect %s\n", cl_reconnectArgs ) );
}
