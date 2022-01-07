
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int event; int eventParm; int number; } ;
struct TYPE_10__ {int eventTime; TYPE_3__ s; TYPE_2__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_11__ {int time; } ;
struct TYPE_7__ {int externalEvent; int externalEventParm; int externalEventTime; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;


 int EV_EVENT_BIT1 ;
 int EV_EVENT_BITS ;
 int G_Printf (char*,int ) ;
 TYPE_5__ level ;

void G_AddEvent( gentity_t *ent, int event, int eventParm ) {
 int bits;

 if ( !event ) {
  G_Printf( "G_AddEvent: zero event added for entity %i\n", ent->s.number );
  return;
 }


 if ( ent->client ) {
  bits = ent->client->ps.externalEvent & EV_EVENT_BITS;
  bits = ( bits + EV_EVENT_BIT1 ) & EV_EVENT_BITS;
  ent->client->ps.externalEvent = event | bits;
  ent->client->ps.externalEventParm = eventParm;
  ent->client->ps.externalEventTime = level.time;
 } else {
  bits = ent->s.event & EV_EVENT_BITS;
  bits = ( bits + EV_EVENT_BIT1 ) & EV_EVENT_BITS;
  ent->s.event = event | bits;
  ent->s.eventParm = eventParm;
 }
 ent->eventTime = level.time;
}
