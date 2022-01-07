
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_BACKGROUND ;
 int ART_SAVE0 ;
 int ART_SAVE1 ;
 int trap_R_RegisterShaderNoMip (int ) ;

void UI_SaveConfigMenu_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );
 trap_R_RegisterShaderNoMip( ART_SAVE0 );
 trap_R_RegisterShaderNoMip( ART_SAVE1 );
 trap_R_RegisterShaderNoMip( ART_BACKGROUND );
}
