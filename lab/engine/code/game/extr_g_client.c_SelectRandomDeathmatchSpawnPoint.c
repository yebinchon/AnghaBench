
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ gentity_t ;


 int FL_NO_BOTS ;
 int FL_NO_HUMANS ;
 int FOFS (int ) ;
 TYPE_1__* G_Find (TYPE_1__*,int ,char*) ;
 int MAX_SPAWN_POINTS ;
 scalar_t__ SpotWouldTelefrag (TYPE_1__*) ;
 int classname ;
 int rand () ;

gentity_t *SelectRandomDeathmatchSpawnPoint(qboolean isbot) {
 gentity_t *spot;
 int count;
 int selection;
 gentity_t *spots[MAX_SPAWN_POINTS];

 count = 0;
 spot = ((void*)0);

 while((spot = G_Find (spot, FOFS(classname), "info_player_deathmatch")) != ((void*)0) && count < MAX_SPAWN_POINTS)
 {
  if(SpotWouldTelefrag(spot))
   continue;

  if(((spot->flags & FL_NO_BOTS) && isbot) ||
     ((spot->flags & FL_NO_HUMANS) && !isbot))
  {

   continue;
  }

  spots[count] = spot;
  count++;
 }

 if ( !count ) {
  return G_Find( ((void*)0), FOFS(classname), "info_player_deathmatch");
 }

 selection = rand() % count;
 return spots[ selection ];
}
