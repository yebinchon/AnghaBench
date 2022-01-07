
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_8__ {scalar_t__* powerups; } ;
struct TYPE_7__ {TYPE_2__ ps; } ;


 size_t PW_BLUEFLAG ;
 size_t PW_NEUTRALFLAG ;
 size_t PW_REDFLAG ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 int Team_ReturnFlag (int ) ;
 int memset (scalar_t__*,int ,int) ;

void Use_target_remove_powerups( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
 if( !activator->client ) {
  return;
 }

 if( activator->client->ps.powerups[PW_REDFLAG] ) {
  Team_ReturnFlag( TEAM_RED );
 } else if( activator->client->ps.powerups[PW_BLUEFLAG] ) {
  Team_ReturnFlag( TEAM_BLUE );
 } else if( activator->client->ps.powerups[PW_NEUTRALFLAG] ) {
  Team_ReturnFlag( TEAM_FREE );
 }

 memset( activator->client->ps.powerups, 0, sizeof( activator->client->ps.powerups ) );
}
