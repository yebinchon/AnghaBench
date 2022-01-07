
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ culled; TYPE_2__* shaderInfo; int * winding; } ;
typedef TYPE_3__ side_t ;
typedef scalar_t__ qboolean ;
struct TYPE_12__ {int dist; int normal; } ;
typedef TYPE_4__ plane_t ;
struct TYPE_13__ {int compileFlags; int numsides; TYPE_1__* sides; } ;
typedef TYPE_5__ brush_t ;
struct TYPE_10__ {scalar_t__ polygonOffset; scalar_t__ autosprite; } ;
struct TYPE_9__ {int compileFlags; size_t planenum; } ;


 int C_NODRAW ;
 int C_TRANSLUCENT ;
 int SIDE_CROSS ;
 int SIDE_FRONT ;
 int WindingOnPlaneSide (int *,int ,int ) ;
 int g_numHiddenFaces ;
 TYPE_4__* mapplanes ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

qboolean SideInBrush( side_t *side, brush_t *b ){
 int i, s;
 plane_t *plane;



 if ( side->winding == ((void*)0) || side->shaderInfo == ((void*)0) ) {
  return qtrue;
 }


 if ( side->culled == qtrue || ( b->compileFlags & C_TRANSLUCENT ) ) {
  return qfalse;
 }


 for ( i = 0; i < b->numsides; i++ )
 {

  if ( b->sides[ i ].compileFlags & C_NODRAW ) {
   return qfalse;
  }


  plane = &mapplanes[ b->sides[ i ].planenum ];
  s = WindingOnPlaneSide( side->winding, plane->normal, plane->dist );
  if ( s == SIDE_FRONT || s == SIDE_CROSS ) {
   return qfalse;
  }
 }


 if ( side->shaderInfo ) {
  if ( side->shaderInfo->autosprite || side->shaderInfo->polygonOffset ) {
   return qfalse;
  }
 }


 side->culled = qtrue;
 g_numHiddenFaces++;
 return qtrue;
}
