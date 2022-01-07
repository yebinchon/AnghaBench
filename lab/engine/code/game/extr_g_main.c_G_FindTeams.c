
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int * targetname; struct TYPE_4__* teammaster; struct TYPE_4__* teamchain; int team; int inuse; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_5__ {int num_entities; } ;


 int FL_TEAMSLAVE ;
 int G_Printf (char*,int,int) ;
 int MAX_CLIENTS ;
 TYPE_1__* g_entities ;
 TYPE_2__ level ;
 int strcmp (int ,int ) ;

void G_FindTeams( void ) {
 gentity_t *e, *e2;
 int i, j;
 int c, c2;

 c = 0;
 c2 = 0;
 for ( i=MAX_CLIENTS, e=g_entities+i ; i < level.num_entities ; i++,e++ ) {
  if (!e->inuse)
   continue;
  if (!e->team)
   continue;
  if (e->flags & FL_TEAMSLAVE)
   continue;
  e->teammaster = e;
  c++;
  c2++;
  for (j=i+1, e2=e+1 ; j < level.num_entities ; j++,e2++)
  {
   if (!e2->inuse)
    continue;
   if (!e2->team)
    continue;
   if (e2->flags & FL_TEAMSLAVE)
    continue;
   if (!strcmp(e->team, e2->team))
   {
    c2++;
    e2->teamchain = e->teamchain;
    e->teamchain = e2;
    e2->teammaster = e;
    e2->flags |= FL_TEAMSLAVE;


    if ( e2->targetname ) {
     e->targetname = e2->targetname;
     e2->targetname = ((void*)0);
    }
   }
  }
 }

 G_Printf ("%i teams with %i entities\n", c, c2);
}
