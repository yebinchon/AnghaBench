
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int randomAngleRange; } ;
typedef TYPE_1__ gentity_t ;


 int G_SpawnFloat (char*,char*,int *) ;

void SP_team_CTF_redplayer( gentity_t *ent ) {
 G_SpawnFloat( "randomAngleRange", "360.0", &ent->randomAngleRange );
}
