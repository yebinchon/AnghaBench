
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_5__ {int y; int x; } ;
struct TYPE_6__ {int height; int width; TYPE_1__ generic; } ;
typedef TYPE_2__ menubitmap_s ;
typedef int buf ;
struct TYPE_8__ {int playerinfo; int playerModel; } ;
struct TYPE_7__ {int realtime; } ;


 int LEGS_IDLE ;
 int MAX_QPATH ;
 size_t PITCH ;
 size_t ROLL ;
 int TORSO_STAND ;
 int UI_DrawPlayer (int ,int ,int ,int ,int *,int) ;
 int UI_PlayerInfo_SetInfo (int *,int ,int ,int*,int ,int ,int ) ;
 int UI_PlayerInfo_SetModel (int *,char*) ;
 int WP_MACHINEGUN ;
 size_t YAW ;
 int qfalse ;
 TYPE_4__ s_playersettings ;
 scalar_t__ strcmp (char*,int ) ;
 int strcpy (int ,char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 TYPE_3__ uis ;
 int vec3_origin ;

__attribute__((used)) static void PlayerSettings_DrawPlayer( void *self ) {
 menubitmap_s *b;
 vec3_t viewangles;
 char buf[MAX_QPATH];

 trap_Cvar_VariableStringBuffer( "model", buf, sizeof( buf ) );
 if ( strcmp( buf, s_playersettings.playerModel ) != 0 ) {
  UI_PlayerInfo_SetModel( &s_playersettings.playerinfo, buf );
  strcpy( s_playersettings.playerModel, buf );

  viewangles[YAW] = 180 - 30;
  viewangles[PITCH] = 0;
  viewangles[ROLL] = 0;
  UI_PlayerInfo_SetInfo( &s_playersettings.playerinfo, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_MACHINEGUN, qfalse );
 }

 b = (menubitmap_s*) self;
 UI_DrawPlayer( b->generic.x, b->generic.y, b->width, b->height, &s_playersettings.playerinfo, uis.realtime/2 );
}
