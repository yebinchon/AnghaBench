
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int areanum2; int areanum; } ;
typedef TYPE_1__ svEntity_t ;
typedef int sharedEntity_t ;
typedef int qboolean ;


 int CM_AdjustAreaPortalState (int ,int,int ) ;
 TYPE_1__* SV_SvEntityForGentity (int *) ;

void SV_AdjustAreaPortalState( sharedEntity_t *ent, qboolean open ) {
 svEntity_t *svEnt;

 svEnt = SV_SvEntityForGentity( ent );
 if ( svEnt->areanum2 == -1 ) {
  return;
 }
 CM_AdjustAreaPortalState( svEnt->areanum, svEnt->areanum2, open );
}
