
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int playerInfo_t ;
struct TYPE_2__ {int playerinfo; } ;


 int ANIM_IDLE ;
 int Controls_UpdateModel (int ) ;
 int UI_Cvar_VariableString (char*) ;
 int UI_PlayerInfo_SetModel (int *,int ) ;
 int memset (int *,int ,int) ;
 TYPE_1__ s_controls ;

__attribute__((used)) static void Controls_InitModel( void )
{
 memset( &s_controls.playerinfo, 0, sizeof(playerInfo_t) );

 UI_PlayerInfo_SetModel( &s_controls.playerinfo, UI_Cvar_VariableString( "model" ) );

 Controls_UpdateModel( ANIM_IDLE );
}
