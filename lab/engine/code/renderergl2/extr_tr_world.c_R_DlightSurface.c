
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int dlightBits; } ;
typedef TYPE_5__ srfBspSurface_t ;
struct TYPE_10__ {float dist; int normal; } ;
struct TYPE_12__ {int type; float** bounds; int radius; int localOrigin; TYPE_1__ plane; } ;
struct TYPE_15__ {int* data; TYPE_3__ cullinfo; } ;
typedef TYPE_6__ msurface_t ;
struct TYPE_16__ {float* origin; float radius; } ;
typedef TYPE_7__ dlight_t ;
struct TYPE_13__ {int c_dlightSurfacesCulled; int c_dlightSurfaces; } ;
struct TYPE_11__ {int num_dlights; TYPE_7__* dlights; } ;
struct TYPE_17__ {TYPE_4__ pc; TYPE_2__ refdef; } ;


 int CULLINFO_BOX ;
 int CULLINFO_PLANE ;
 int CULLINFO_SPHERE ;
 float DotProduct (float*,int ) ;



 int SpheresIntersect (float*,float,int ,int ) ;
 TYPE_8__ tr ;

__attribute__((used)) static int R_DlightSurface( msurface_t *surf, int dlightBits ) {
 float d;
 int i;
 dlight_t *dl;

 if ( surf->cullinfo.type & CULLINFO_PLANE )
 {
  for ( i = 0 ; i < tr.refdef.num_dlights ; i++ ) {
   if ( ! ( dlightBits & ( 1 << i ) ) ) {
    continue;
   }
   dl = &tr.refdef.dlights[i];
   d = DotProduct( dl->origin, surf->cullinfo.plane.normal ) - surf->cullinfo.plane.dist;
   if ( d < -dl->radius || d > dl->radius ) {

    dlightBits &= ~( 1 << i );
   }
  }
 }

 if ( surf->cullinfo.type & CULLINFO_BOX )
 {
  for ( i = 0 ; i < tr.refdef.num_dlights ; i++ ) {
   if ( ! ( dlightBits & ( 1 << i ) ) ) {
    continue;
   }
   dl = &tr.refdef.dlights[i];
   if ( dl->origin[0] - dl->radius > surf->cullinfo.bounds[1][0]
    || dl->origin[0] + dl->radius < surf->cullinfo.bounds[0][0]
    || dl->origin[1] - dl->radius > surf->cullinfo.bounds[1][1]
    || dl->origin[1] + dl->radius < surf->cullinfo.bounds[0][1]
    || dl->origin[2] - dl->radius > surf->cullinfo.bounds[1][2]
    || dl->origin[2] + dl->radius < surf->cullinfo.bounds[0][2] ) {

    dlightBits &= ~( 1 << i );
   }
  }
 }

 if ( surf->cullinfo.type & CULLINFO_SPHERE )
 {
  for ( i = 0 ; i < tr.refdef.num_dlights ; i++ ) {
   if ( ! ( dlightBits & ( 1 << i ) ) ) {
    continue;
   }
   dl = &tr.refdef.dlights[i];
   if (!SpheresIntersect(dl->origin, dl->radius, surf->cullinfo.localOrigin, surf->cullinfo.radius))
   {

    dlightBits &= ~( 1 << i );
   }
  }
 }

 switch(*surf->data)
 {
  case 130:
  case 129:
  case 128:
   ((srfBspSurface_t *)surf->data)->dlightBits = dlightBits;
   break;

  default:
   dlightBits = 0;
   break;
 }

 if ( dlightBits ) {
  tr.pc.c_dlightSurfaces++;
 } else {
  tr.pc.c_dlightSurfacesCulled++;
 }

 return dlightBits;
}
