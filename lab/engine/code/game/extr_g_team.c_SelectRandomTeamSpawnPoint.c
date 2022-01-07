
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ team_t ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ gentity_t ;


 int FL_NO_BOTS ;
 int FL_NO_HUMANS ;
 int FOFS (char*) ;
 TYPE_1__* G_Find (TYPE_1__*,int ,char*) ;
 scalar_t__ SpotWouldTelefrag (TYPE_1__*) ;
 int TEAM_BEGIN ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_RED ;
 float random () ;

gentity_t *SelectRandomTeamSpawnPoint( int teamstate, team_t team, qboolean isbot) {
 gentity_t *spot = ((void*)0);
 gentity_t *best_spot = ((void*)0);
 float spot_count = 0;

 char *classname;

 if (teamstate == TEAM_BEGIN) {
  if (team == TEAM_RED)
   classname = "team_CTF_redplayer";
  else if (team == TEAM_BLUE)
   classname = "team_CTF_blueplayer";
  else
   return ((void*)0);
 } else {
  if (team == TEAM_RED)
   classname = "team_CTF_redspawn";
  else if (team == TEAM_BLUE)
   classname = "team_CTF_bluespawn";
  else
   return ((void*)0);
 }

 while ( ( spot = G_Find( spot, FOFS(classname), classname ) ) != ((void*)0) ) {
  if ( ( (spot->flags & FL_NO_BOTS) && isbot) || ((spot->flags & FL_NO_HUMANS) && !isbot) )
   continue;

  if ( SpotWouldTelefrag( spot ) ) {

   if ( best_spot == ((void*)0) ) {
    best_spot = spot;
   }
   continue;
  }

  spot_count += 1.0f;
  if ( random() * spot_count <= 1.0f ) {
   best_spot = spot;
  }
 }

 return best_spot;
}
