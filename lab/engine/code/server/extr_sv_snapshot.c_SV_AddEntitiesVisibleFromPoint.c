
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_21__ {scalar_t__ snapshotCounter; int numClusters; int* clusternums; int lastCluster; int areanum2; int areanum; } ;
typedef TYPE_5__ svEntity_t ;
typedef int snapshotEntityNumbers_t ;
struct TYPE_20__ {int number; int generic1; int origin2; int origin; } ;
struct TYPE_19__ {int svFlags; int singleClient; int linked; } ;
struct TYPE_22__ {TYPE_4__ s; TYPE_3__ r; } ;
typedef TYPE_6__ sharedEntity_t ;
typedef int qboolean ;
struct TYPE_18__ {int clientNum; } ;
struct TYPE_23__ {TYPE_2__ ps; int areabits; int areabytes; } ;
typedef TYPE_7__ clientSnapshot_t ;
typedef int byte ;
struct TYPE_25__ {int num_entities; scalar_t__ snapshotCounter; int state; } ;
struct TYPE_17__ {int (* has_alt_cameras ) (int ) ;} ;
struct TYPE_24__ {int userdata; TYPE_1__ hooks; } ;
typedef TYPE_8__ DeepmindContext ;


 int CM_AreasConnected (int,int ) ;
 int* CM_ClusterPVS (int) ;
 int CM_LeafArea (int) ;
 int CM_LeafCluster (int) ;
 int CM_PointLeafnum (int ) ;
 int CM_WriteAreaBits (int ,int) ;
 int Com_DPrintf (char*) ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int SVF_BROADCAST ;
 int SVF_CLIENTMASK ;
 int SVF_NOCLIENT ;
 int SVF_NOTSINGLECLIENT ;
 int SVF_PORTAL ;
 int SVF_SINGLECLIENT ;
 int SV_AddEntToSnapshot (TYPE_5__*,TYPE_6__*,int *) ;
 TYPE_6__* SV_GentityNum (int) ;
 TYPE_5__* SV_SvEntityForGentity (TYPE_6__*) ;
 float VectorLengthSquared (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_8__* dmlab_context () ;
 int qtrue ;
 int stub1 (int ) ;
 TYPE_9__ sv ;

__attribute__((used)) static void SV_AddEntitiesVisibleFromPoint( vec3_t origin, clientSnapshot_t *frame,
         snapshotEntityNumbers_t *eNums, qboolean portal ) {
 int e, i;
 sharedEntity_t *ent;
 svEntity_t *svEnt;
 int l;
 int clientarea, clientcluster;
 int leafnum;
 byte *clientpvs;
 byte *bitvector;
 DeepmindContext* ctx = dmlab_context();
 bool has_alt_cameras = ctx->hooks.has_alt_cameras(ctx->userdata);




 if ( !sv.state ) {
  return;
 }

 leafnum = CM_PointLeafnum (origin);
 clientarea = CM_LeafArea (leafnum);
 clientcluster = CM_LeafCluster (leafnum);


 frame->areabytes = CM_WriteAreaBits( frame->areabits, clientarea );

 clientpvs = CM_ClusterPVS (clientcluster);

 for ( e = 0 ; e < sv.num_entities ; e++ ) {
  ent = SV_GentityNum(e);


  if ( !ent->r.linked ) {
   continue;
  }

  if (ent->s.number != e) {
   Com_DPrintf ("FIXING ENT->S.NUMBER!!!\n");
   ent->s.number = e;
  }


  if ( ent->r.svFlags & SVF_NOCLIENT ) {
   continue;
  }


  if ( ent->r.svFlags & SVF_SINGLECLIENT ) {
   if ( ent->r.singleClient != frame->ps.clientNum ) {
    continue;
   }
  }

  if ( ent->r.svFlags & SVF_NOTSINGLECLIENT ) {
   if ( ent->r.singleClient == frame->ps.clientNum ) {
    continue;
   }
  }

  if ( ent->r.svFlags & SVF_CLIENTMASK ) {
   if (frame->ps.clientNum >= 32)
    Com_Error( ERR_DROP, "SVF_CLIENTMASK: clientNum >= 32" );
   if (~ent->r.singleClient & (1 << frame->ps.clientNum))
    continue;
  }

  svEnt = SV_SvEntityForGentity( ent );


  if ( svEnt->snapshotCounter == sv.snapshotCounter ) {
   continue;
  }


  if ( ent->r.svFlags & SVF_BROADCAST || has_alt_cameras ) {
   SV_AddEntToSnapshot( svEnt, ent, eNums );
   continue;
  }



  if ( !CM_AreasConnected( clientarea, svEnt->areanum ) ) {


   if ( !CM_AreasConnected( clientarea, svEnt->areanum2 ) ) {
    continue;
   }
  }

  bitvector = clientpvs;


  if ( !svEnt->numClusters ) {
   continue;
  }
  l = 0;
  for ( i=0 ; i < svEnt->numClusters ; i++ ) {
   l = svEnt->clusternums[i];
   if ( bitvector[l >> 3] & (1 << (l&7) ) ) {
    break;
   }
  }



  if ( i == svEnt->numClusters ) {
   if ( svEnt->lastCluster ) {
    for ( ; l <= svEnt->lastCluster ; l++ ) {
     if ( bitvector[l >> 3] & (1 << (l&7) ) ) {
      break;
     }
    }
    if ( l == svEnt->lastCluster ) {
     continue;
    }
   } else {
    continue;
   }
  }


  SV_AddEntToSnapshot( svEnt, ent, eNums );


  if ( ent->r.svFlags & SVF_PORTAL ) {
   if ( ent->s.generic1 ) {
    vec3_t dir;
    VectorSubtract(ent->s.origin, origin, dir);
    if ( VectorLengthSquared(dir) > (float) ent->s.generic1 * ent->s.generic1 ) {
     continue;
    }
   }
   SV_AddEntitiesVisibleFromPoint( ent->s.origin2, frame, eNums, qtrue );
  }

 }
}
