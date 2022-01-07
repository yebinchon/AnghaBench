
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int playerInfo_t ;
struct TYPE_2__ {int playerinfo; int modelskin; } ;


 int LEGS_IDLE ;
 size_t PITCH ;
 size_t ROLL ;
 int TORSO_STAND ;
 int UI_PlayerInfo_SetInfo (int *,int ,int ,int*,int*,int ,int ) ;
 int UI_PlayerInfo_SetModel (int *,int ) ;
 int VectorClear (int*) ;
 int WP_MACHINEGUN ;
 size_t YAW ;
 int memset (int *,int ,int) ;
 int qfalse ;
 TYPE_1__ s_playermodel ;

__attribute__((used)) static void PlayerModel_UpdateModel( void )
{
 vec3_t viewangles;
 vec3_t moveangles;

 memset( &s_playermodel.playerinfo, 0, sizeof(playerInfo_t) );

 viewangles[YAW] = 180 - 30;
 viewangles[PITCH] = 0;
 viewangles[ROLL] = 0;
 VectorClear( moveangles );

 UI_PlayerInfo_SetModel( &s_playermodel.playerinfo, s_playermodel.modelskin );
 UI_PlayerInfo_SetInfo( &s_playermodel.playerinfo, LEGS_IDLE, TORSO_STAND, viewangles, moveangles, WP_MACHINEGUN, qfalse );
}
