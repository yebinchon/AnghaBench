
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int svFlags; } ;
struct TYPE_7__ {int trBase; } ;
struct TYPE_8__ {int eventParm; TYPE_1__ pos; } ;
struct TYPE_10__ {TYPE_3__ r; TYPE_2__ s; } ;
typedef TYPE_4__ gentity_t ;


 int EV_GLOBAL_TEAM_SOUND ;
 int GTS_BLUE_CAPTURE ;
 int GTS_RED_CAPTURE ;
 int G_Printf (char*) ;
 TYPE_4__* G_TempEntity (int ,int ) ;
 int SVF_BROADCAST ;
 int TEAM_BLUE ;

void Team_CaptureFlagSound( gentity_t *ent, int team ) {
 gentity_t *te;

 if (ent == ((void*)0)) {
  G_Printf ("Warning:  NULL passed to Team_CaptureFlagSound\n");
  return;
 }

 te = G_TempEntity( ent->s.pos.trBase, EV_GLOBAL_TEAM_SOUND );
 if( team == TEAM_BLUE ) {
  te->s.eventParm = GTS_BLUE_CAPTURE;
 }
 else {
  te->s.eventParm = GTS_RED_CAPTURE;
 }
 te->r.svFlags |= SVF_BROADCAST;
}
