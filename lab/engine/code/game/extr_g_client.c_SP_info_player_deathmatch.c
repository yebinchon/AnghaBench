
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int randomAngleRange; } ;
typedef TYPE_1__ gentity_t ;


 int FL_NO_BOTS ;
 int FL_NO_HUMANS ;
 int G_SpawnFloat (char*,char*,int *) ;
 int G_SpawnInt (char*,char*,int*) ;

void SP_info_player_deathmatch( gentity_t *ent ) {
 int i;
 G_SpawnFloat( "randomAngleRange", "360.0", &ent->randomAngleRange );
 G_SpawnInt( "nobots", "0", &i);
 if ( i ) {
  ent->flags |= FL_NO_BOTS;
 }
 G_SpawnInt( "nohumans", "0", &i );
 if ( i ) {
  ent->flags |= FL_NO_HUMANS;
 }
}
