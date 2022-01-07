
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* silenceSound; void* nightmareSound; void** skillpics; } ;


 int ART_BACK ;
 int ART_BACK_FOCUS ;
 int ART_FIGHT ;
 int ART_FIGHT_FOCUS ;
 int ART_FRAME ;
 int ART_MAP_COMPLETE1 ;
 int ART_MAP_COMPLETE2 ;
 int ART_MAP_COMPLETE3 ;
 int ART_MAP_COMPLETE4 ;
 int ART_MAP_COMPLETE5 ;
 int qfalse ;
 TYPE_1__ skillMenuInfo ;
 void* trap_R_RegisterShaderNoMip (int ) ;
 void* trap_S_RegisterSound (char*,int ) ;

void UI_SPSkillMenu_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_FRAME );
 trap_R_RegisterShaderNoMip( ART_BACK );
 trap_R_RegisterShaderNoMip( ART_BACK_FOCUS );
 trap_R_RegisterShaderNoMip( ART_FIGHT );
 trap_R_RegisterShaderNoMip( ART_FIGHT_FOCUS );
 skillMenuInfo.skillpics[0] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE1 );
 skillMenuInfo.skillpics[1] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE2 );
 skillMenuInfo.skillpics[2] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE3 );
 skillMenuInfo.skillpics[3] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE4 );
 skillMenuInfo.skillpics[4] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE5 );

 skillMenuInfo.nightmareSound = trap_S_RegisterSound( "sound/misc/nightmare.wav", qfalse );
 skillMenuInfo.silenceSound = trap_S_RegisterSound( "sound/misc/silence.wav", qfalse );
}
