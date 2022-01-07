
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int member_0; int member_1; int member_2; } ;
typedef TYPE_2__ vec3_t ;
struct TYPE_8__ {int areanum; int maxs; int mins; int origin; } ;
struct TYPE_10__ {int * prev; struct TYPE_10__* next; TYPE_1__ goal; int name; } ;
typedef TYPE_3__ bot_waypoint_t ;


 int BotAI_Print (int ,char*) ;
 int PRT_WARNING ;
 int Q_strncpyz (int ,char*,int) ;
 int VectorCopy (TYPE_2__,int ) ;
 TYPE_3__* botai_freewaypoints ;

bot_waypoint_t *BotCreateWayPoint(char *name, vec3_t origin, int areanum) {
 bot_waypoint_t *wp;
 vec3_t waypointmins = {-8, -8, -8}, waypointmaxs = {8, 8, 8};

 wp = botai_freewaypoints;
 if ( !wp ) {
  BotAI_Print( PRT_WARNING, "BotCreateWayPoint: Out of waypoints\n" );
  return ((void*)0);
 }
 botai_freewaypoints = botai_freewaypoints->next;

 Q_strncpyz( wp->name, name, sizeof(wp->name) );
 VectorCopy(origin, wp->goal.origin);
 VectorCopy(waypointmins, wp->goal.mins);
 VectorCopy(waypointmaxs, wp->goal.maxs);
 wp->goal.areanum = areanum;
 wp->next = ((void*)0);
 wp->prev = ((void*)0);
 return wp;
}
