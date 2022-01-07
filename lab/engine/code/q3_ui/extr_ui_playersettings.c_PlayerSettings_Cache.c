
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** fxPic; void* fxBasePic; } ;


 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_FRAMEL ;
 int ART_FRAMER ;
 int ART_FX_BASE ;
 int ART_FX_BLUE ;
 int ART_FX_CYAN ;
 int ART_FX_GREEN ;
 int ART_FX_RED ;
 int ART_FX_TEAL ;
 int ART_FX_WHITE ;
 int ART_FX_YELLOW ;
 int ART_MODEL0 ;
 int ART_MODEL1 ;
 TYPE_1__ s_playersettings ;
 void* trap_R_RegisterShaderNoMip (int ) ;

void PlayerSettings_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_FRAMEL );
 trap_R_RegisterShaderNoMip( ART_FRAMER );
 trap_R_RegisterShaderNoMip( ART_MODEL0 );
 trap_R_RegisterShaderNoMip( ART_MODEL1 );
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );

 s_playersettings.fxBasePic = trap_R_RegisterShaderNoMip( ART_FX_BASE );
 s_playersettings.fxPic[0] = trap_R_RegisterShaderNoMip( ART_FX_RED );
 s_playersettings.fxPic[1] = trap_R_RegisterShaderNoMip( ART_FX_YELLOW );
 s_playersettings.fxPic[2] = trap_R_RegisterShaderNoMip( ART_FX_GREEN );
 s_playersettings.fxPic[3] = trap_R_RegisterShaderNoMip( ART_FX_TEAL );
 s_playersettings.fxPic[4] = trap_R_RegisterShaderNoMip( ART_FX_BLUE );
 s_playersettings.fxPic[5] = trap_R_RegisterShaderNoMip( ART_FX_CYAN );
 s_playersettings.fxPic[6] = trap_R_RegisterShaderNoMip( ART_FX_WHITE );
}
