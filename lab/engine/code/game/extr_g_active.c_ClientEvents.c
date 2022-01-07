
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int vec3_t ;
typedef int gitem_t ;
struct TYPE_18__ {int eType; } ;
struct TYPE_21__ {int count; TYPE_5__* client; int health; int spawnflags; int pain_debounce_time; TYPE_1__ s; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_20__ {int eventSequence; int* events; int* powerups; int generic1; int * stats; int origin; } ;
struct TYPE_19__ {int sessionTeam; } ;
struct TYPE_22__ {int invulnerabilityTime; int portalID; TYPE_3__ ps; TYPE_2__ sess; } ;
typedef TYPE_5__ gclient_t ;
struct TYPE_25__ {int integer; } ;
struct TYPE_24__ {int integer; } ;
struct TYPE_23__ {int time; } ;


 int * BG_FindItem (char*) ;
 int * BG_FindItemForPowerup (size_t) ;
 int DF_NO_FALLING ;
 int DropPortalDestination (TYPE_4__*) ;
 int DropPortalSource (TYPE_4__*) ;
 TYPE_4__* Drop_Item (TYPE_4__*,int *,int ) ;
 int ET_PLAYER ;
 int FireWeapon (TYPE_4__*) ;
 int GT_HARVESTER ;
 int G_Damage (TYPE_4__*,int *,int *,int *,int *,int,int ,int ) ;
 int G_StartKamikaze (TYPE_4__*) ;
 int MAX_PS_EVENTS ;
 int MOD_FALLING ;
 size_t PW_BLUEFLAG ;
 size_t PW_NEUTRALFLAG ;
 size_t PW_REDFLAG ;
 size_t STAT_MAX_HEALTH ;
 int SelectSpawnPoint (int ,int ,int ,int ) ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 int TeleportPlayer (TYPE_4__*,int ,int ) ;
 TYPE_8__ g_dmflags ;
 TYPE_7__ g_gametype ;
 TYPE_6__ level ;
 int qfalse ;

void ClientEvents( gentity_t *ent, int oldEventSequence ) {
 int i, j;
 int event;
 gclient_t *client;
 int damage;
 vec3_t origin, angles;

 gitem_t *item;
 gentity_t *drop;

 client = ent->client;

 if ( oldEventSequence < client->ps.eventSequence - MAX_PS_EVENTS ) {
  oldEventSequence = client->ps.eventSequence - MAX_PS_EVENTS;
 }
 for ( i = oldEventSequence ; i < client->ps.eventSequence ; i++ ) {
  event = client->ps.events[ i & (MAX_PS_EVENTS-1) ];

  switch ( event ) {
  case 134:
  case 135:
   if ( ent->s.eType != ET_PLAYER ) {
    break;
   }
   if ( g_dmflags.integer & DF_NO_FALLING ) {
    break;
   }
   if ( event == 135 ) {
    damage = 10;
   } else {
    damage = 5;
   }
   ent->pain_debounce_time = level.time + 200;
   G_Damage (ent, ((void*)0), ((void*)0), ((void*)0), ((void*)0), damage, 0, MOD_FALLING);
   break;

  case 133:
   FireWeapon( ent );
   break;

  case 132:

   item = ((void*)0);
   j = 0;

   if ( ent->client->ps.powerups[ PW_REDFLAG ] ) {
    item = BG_FindItemForPowerup( PW_REDFLAG );
    j = PW_REDFLAG;
   } else if ( ent->client->ps.powerups[ PW_BLUEFLAG ] ) {
    item = BG_FindItemForPowerup( PW_BLUEFLAG );
    j = PW_BLUEFLAG;
   } else if ( ent->client->ps.powerups[ PW_NEUTRALFLAG ] ) {
    item = BG_FindItemForPowerup( PW_NEUTRALFLAG );
    j = PW_NEUTRALFLAG;
   }

   if ( item ) {
    drop = Drop_Item( ent, item, 0 );

    drop->count = ( ent->client->ps.powerups[ j ] - level.time ) / 1000;
    if ( drop->count < 1 ) {
     drop->count = 1;
    }

    ent->client->ps.powerups[ j ] = 0;
   }
   SelectSpawnPoint( ent->client->ps.origin, origin, angles, qfalse );
   TeleportPlayer( ent, origin, angles );
   break;

  case 131:
   ent->health = ent->client->ps.stats[STAT_MAX_HEALTH] + 25;

   break;
  default:
   break;
  }
 }

}
