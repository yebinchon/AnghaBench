
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int pshadowBits; } ;
typedef TYPE_4__ srfBspSurface_t ;
struct TYPE_17__ {float dist; int normal; } ;
struct TYPE_14__ {float* lightOrigin; float lightRadius; TYPE_9__ cullPlane; int viewRadius; int viewOrigin; } ;
typedef TYPE_5__ pshadow_t ;
struct TYPE_10__ {float dist; int normal; } ;
struct TYPE_12__ {int type; float** bounds; float* localOrigin; float radius; TYPE_1__ plane; } ;
struct TYPE_15__ {int* data; TYPE_3__ cullinfo; } ;
typedef TYPE_6__ msurface_t ;
struct TYPE_11__ {int num_pshadows; TYPE_5__* pshadows; } ;
struct TYPE_16__ {TYPE_2__ refdef; } ;


 int BoxOnPlaneSide (float*,float*,TYPE_9__*) ;
 int CULLINFO_BOX ;
 int CULLINFO_PLANE ;
 int CULLINFO_SPHERE ;
 float DotProduct (float*,int ) ;



 int SpheresIntersect (int ,int ,float*,float) ;
 TYPE_7__ tr ;

__attribute__((used)) static int R_PshadowSurface( msurface_t *surf, int pshadowBits ) {
 float d;
 int i;
 pshadow_t *ps;

 if ( surf->cullinfo.type & CULLINFO_PLANE )
 {
  for ( i = 0 ; i < tr.refdef.num_pshadows ; i++ ) {
   if ( ! ( pshadowBits & ( 1 << i ) ) ) {
    continue;
   }
   ps = &tr.refdef.pshadows[i];
   d = DotProduct( ps->lightOrigin, surf->cullinfo.plane.normal ) - surf->cullinfo.plane.dist;
   if ( d < -ps->lightRadius || d > ps->lightRadius ) {

    pshadowBits &= ~( 1 << i );
   }
  }
 }

 if ( surf->cullinfo.type & CULLINFO_BOX )
 {
  for ( i = 0 ; i < tr.refdef.num_pshadows ; i++ ) {
   if ( ! ( pshadowBits & ( 1 << i ) ) ) {
    continue;
   }
   ps = &tr.refdef.pshadows[i];
   if ( ps->lightOrigin[0] - ps->lightRadius > surf->cullinfo.bounds[1][0]
    || ps->lightOrigin[0] + ps->lightRadius < surf->cullinfo.bounds[0][0]
    || ps->lightOrigin[1] - ps->lightRadius > surf->cullinfo.bounds[1][1]
    || ps->lightOrigin[1] + ps->lightRadius < surf->cullinfo.bounds[0][1]
    || ps->lightOrigin[2] - ps->lightRadius > surf->cullinfo.bounds[1][2]
    || ps->lightOrigin[2] + ps->lightRadius < surf->cullinfo.bounds[0][2]
    || BoxOnPlaneSide(surf->cullinfo.bounds[0], surf->cullinfo.bounds[1], &ps->cullPlane) == 2 ) {

    pshadowBits &= ~( 1 << i );
   }
  }
 }

 if ( surf->cullinfo.type & CULLINFO_SPHERE )
 {
  for ( i = 0 ; i < tr.refdef.num_pshadows ; i++ ) {
   if ( ! ( pshadowBits & ( 1 << i ) ) ) {
    continue;
   }
   ps = &tr.refdef.pshadows[i];
   if (!SpheresIntersect(ps->viewOrigin, ps->viewRadius, surf->cullinfo.localOrigin, surf->cullinfo.radius)
    || DotProduct( surf->cullinfo.localOrigin, ps->cullPlane.normal ) - ps->cullPlane.dist < -surf->cullinfo.radius)
   {

    pshadowBits &= ~( 1 << i );
   }
  }
 }

 switch(*surf->data)
 {
  case 130:
  case 129:
  case 128:
   ((srfBspSurface_t *)surf->data)->pshadowBits = pshadowBits;
   break;

  default:
   pshadowBits = 0;
   break;
 }

 if ( pshadowBits ) {

 }

 return pshadowBits;
}
