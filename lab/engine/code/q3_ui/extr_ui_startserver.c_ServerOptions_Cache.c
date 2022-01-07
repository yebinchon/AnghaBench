
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GAMESERVER_BACK0 ;
 int GAMESERVER_BACK1 ;
 int GAMESERVER_FIGHT0 ;
 int GAMESERVER_FIGHT1 ;
 int GAMESERVER_SELECT ;
 int GAMESERVER_UNKNOWNMAP ;
 int trap_R_RegisterShaderNoMip (int ) ;

void ServerOptions_Cache( void ) {
 trap_R_RegisterShaderNoMip( GAMESERVER_BACK0 );
 trap_R_RegisterShaderNoMip( GAMESERVER_BACK1 );
 trap_R_RegisterShaderNoMip( GAMESERVER_FIGHT0 );
 trap_R_RegisterShaderNoMip( GAMESERVER_FIGHT1 );
 trap_R_RegisterShaderNoMip( GAMESERVER_SELECT );
 trap_R_RegisterShaderNoMip( GAMESERVER_UNKNOWNMAP );
}
