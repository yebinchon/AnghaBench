
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* item; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_4__ {scalar_t__ giTag; } ;


 scalar_t__ PW_BLUEFLAG ;
 scalar_t__ PW_NEUTRALFLAG ;
 scalar_t__ PW_REDFLAG ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 int Team_ResetFlag (int) ;
 int Team_ReturnFlagSound (int ,int) ;

void Team_DroppedFlagThink(gentity_t *ent) {
 int team = TEAM_FREE;

 if( ent->item->giTag == PW_REDFLAG ) {
  team = TEAM_RED;
 }
 else if( ent->item->giTag == PW_BLUEFLAG ) {
  team = TEAM_BLUE;
 }
 else if( ent->item->giTag == PW_NEUTRALFLAG ) {
  team = TEAM_FREE;
 }

 Team_ReturnFlagSound( Team_ResetFlag( team ), team );

}
