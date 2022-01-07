
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_17__ {scalar_t__ snapshotCounter; } ;
typedef TYPE_2__ svEntity_t ;
struct TYPE_18__ {int numSnapshotEntities; int * snapshotEntities; } ;
typedef TYPE_3__ snapshotEntityNumbers_t ;
struct TYPE_19__ {int s; } ;
typedef TYPE_4__ sharedEntity_t ;
struct TYPE_20__ {int clientNum; scalar_t__ viewheight; int origin; } ;
typedef TYPE_5__ playerState_t ;
typedef int entityState_t ;
struct TYPE_16__ {size_t outgoingSequence; } ;
struct TYPE_21__ {scalar_t__ state; TYPE_4__* gentity; TYPE_1__ netchan; TYPE_7__* frames; } ;
typedef TYPE_6__ client_t ;
struct TYPE_22__ {size_t first_entity; scalar_t__ num_entities; scalar_t__ areabits; TYPE_5__ ps; } ;
typedef TYPE_7__ clientSnapshot_t ;
struct TYPE_24__ {scalar_t__ snapshotCounter; TYPE_2__* svEntities; } ;
struct TYPE_23__ {int clients; size_t nextSnapshotEntities; size_t numSnapshotEntities; int * snapshotEntities; } ;


 scalar_t__ CS_ZOMBIE ;
 int Com_Error (int ,char*) ;
 int Com_Memset (scalar_t__,int ,int) ;
 int ERR_DROP ;
 int ERR_FATAL ;
 int MAX_GENTITIES ;
 int MAX_MAP_AREA_BYTES ;
 size_t PACKET_MASK ;
 int SV_AddEntitiesVisibleFromPoint (int *,TYPE_7__*,TYPE_3__*,int ) ;
 TYPE_5__* SV_GameClientNum (TYPE_6__*) ;
 TYPE_4__* SV_GentityNum (int ) ;
 int SV_QsortEntityNumbers ;
 int VectorCopy (int ,int *) ;
 int qfalse ;
 int qsort (int *,int,int,int ) ;
 TYPE_9__ sv ;
 TYPE_8__ svs ;

__attribute__((used)) static void SV_BuildClientSnapshot( client_t *client ) {
 vec3_t org;
 clientSnapshot_t *frame;
 snapshotEntityNumbers_t entityNumbers;
 int i;
 sharedEntity_t *ent;
 entityState_t *state;
 svEntity_t *svEnt;
 sharedEntity_t *clent;
 int clientNum;
 playerState_t *ps;


 sv.snapshotCounter++;


 frame = &client->frames[ client->netchan.outgoingSequence & PACKET_MASK ];


 entityNumbers.numSnapshotEntities = 0;
 Com_Memset( frame->areabits, 0, sizeof( frame->areabits ) );


 frame->num_entities = 0;

 clent = client->gentity;
 if ( !clent || client->state == CS_ZOMBIE ) {
  return;
 }


 ps = SV_GameClientNum( client - svs.clients );
 frame->ps = *ps;



 clientNum = frame->ps.clientNum;
 if ( clientNum < 0 || clientNum >= MAX_GENTITIES ) {
  Com_Error( ERR_DROP, "SV_SvEntityForGentity: bad gEnt" );
 }
 svEnt = &sv.svEntities[ clientNum ];

 svEnt->snapshotCounter = sv.snapshotCounter;


 VectorCopy( ps->origin, org );
 org[2] += ps->viewheight;



 SV_AddEntitiesVisibleFromPoint( org, frame, &entityNumbers, qfalse );





 qsort( entityNumbers.snapshotEntities, entityNumbers.numSnapshotEntities,
  sizeof( entityNumbers.snapshotEntities[0] ), SV_QsortEntityNumbers );



 for ( i = 0 ; i < MAX_MAP_AREA_BYTES/4 ; i++ ) {
  ((int *)frame->areabits)[i] = ((int *)frame->areabits)[i] ^ -1;
 }


 frame->num_entities = 0;
 frame->first_entity = svs.nextSnapshotEntities;
 for ( i = 0 ; i < entityNumbers.numSnapshotEntities ; i++ ) {
  ent = SV_GentityNum(entityNumbers.snapshotEntities[i]);
  state = &svs.snapshotEntities[svs.nextSnapshotEntities % svs.numSnapshotEntities];
  *state = ent->s;
  svs.nextSnapshotEntities++;

  if ( svs.nextSnapshotEntities >= 0x7FFFFFFE ) {
   Com_Error(ERR_FATAL, "svs.nextSnapshotEntities wrapped");
  }
  frame->num_entities++;
 }
}
