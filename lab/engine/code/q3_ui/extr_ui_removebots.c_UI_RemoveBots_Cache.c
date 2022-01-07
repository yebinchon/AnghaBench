
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_BACKGROUND ;
 int ART_DELETE0 ;
 int ART_DELETE1 ;
 int trap_R_RegisterShaderNoMip (int ) ;

void UI_RemoveBots_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_BACKGROUND );
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );
 trap_R_RegisterShaderNoMip( ART_DELETE0 );
 trap_R_RegisterShaderNoMip( ART_DELETE1 );
}
