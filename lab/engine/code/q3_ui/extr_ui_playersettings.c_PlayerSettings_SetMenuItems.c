
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int playerInfo_t ;
struct TYPE_9__ {int curvalue; } ;
struct TYPE_8__ {int curvalue; } ;
struct TYPE_6__ {int buffer; } ;
struct TYPE_7__ {TYPE_1__ field; } ;
struct TYPE_10__ {TYPE_4__ handicap; int playerinfo; TYPE_3__ effects; TYPE_2__ name; } ;


 int Com_Clamp (int,int,int) ;
 int LEGS_IDLE ;
 size_t PITCH ;
 int Q_strncpyz (int ,int ,int) ;
 size_t ROLL ;
 int TORSO_STAND ;
 int UI_Cvar_VariableString (char*) ;
 int UI_PlayerInfo_SetInfo (int *,int ,int ,int*,int ,int ,int ) ;
 int UI_PlayerInfo_SetModel (int *,int ) ;
 int WP_NUM_WEAPONS ;
 size_t YAW ;
 int * gamecodetoui ;
 int memset (int *,int ,int) ;
 int qfalse ;
 TYPE_5__ s_playersettings ;
 int trap_Cvar_VariableValue (char*) ;
 int vec3_origin ;

__attribute__((used)) static void PlayerSettings_SetMenuItems( void ) {
 vec3_t viewangles;
 int c;
 int h;


 Q_strncpyz( s_playersettings.name.field.buffer, UI_Cvar_VariableString("name"), sizeof(s_playersettings.name.field.buffer) );


 c = trap_Cvar_VariableValue( "color1" ) - 1;
 if( c < 0 || c > 6 ) {
  c = 6;
 }
 s_playersettings.effects.curvalue = gamecodetoui[c];


 memset( &s_playersettings.playerinfo, 0, sizeof(playerInfo_t) );

 viewangles[YAW] = 180 - 30;
 viewangles[PITCH] = 0;
 viewangles[ROLL] = 0;

 UI_PlayerInfo_SetModel( &s_playersettings.playerinfo, UI_Cvar_VariableString( "model" ) );
 UI_PlayerInfo_SetInfo( &s_playersettings.playerinfo, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_NUM_WEAPONS, qfalse );


 h = Com_Clamp( 5, 100, trap_Cvar_VariableValue("handicap") );
 s_playersettings.handicap.curvalue = 20 - h / 5;
}
