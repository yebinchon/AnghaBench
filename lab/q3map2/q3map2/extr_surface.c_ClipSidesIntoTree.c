
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_14__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_15__ {int planenum; int * visibleHull; int * winding; TYPE_3__* shaderInfo; } ;
typedef TYPE_2__ side_t ;
struct TYPE_16__ {int compileFlags; scalar_t__ indexed; scalar_t__ noClip; scalar_t__ autosprite; } ;
typedef TYPE_3__ shaderInfo_t ;
struct TYPE_17__ {TYPE_5__* brushes; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_18__ {int numsides; TYPE_2__* sides; struct TYPE_18__* next; } ;
typedef TYPE_5__ brush_t ;


 int C_FOG ;
 int C_NODRAW ;
 int ClipSideIntoTree_r (int *,TYPE_2__*,int ) ;
 int * CopyWinding (int *) ;
 int CullSides (TYPE_4__*) ;
 int DrawSurfaceForSide (TYPE_4__*,TYPE_5__*,TYPE_2__*,int *) ;
 int * ReverseWinding (int *) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*) ;
 scalar_t__ qfalse ;
 TYPE_2__* safe_malloc (int) ;

void ClipSidesIntoTree( entity_t *e, tree_t *tree ){
 brush_t *b;
 int i;
 winding_t *w;
 side_t *side, *newSide;
 shaderInfo_t *si;



 CullSides( e );


 Sys_FPrintf( SYS_VRB, "--- ClipSidesIntoTree ---\n" );


 for ( b = e->brushes; b; b = b->next )
 {

  for ( i = 0; i < b->numsides; i++ )
  {

   side = &b->sides[ i ];
   if ( side->winding == ((void*)0) ) {
    continue;
   }


   w = CopyWinding( side->winding );
   side->visibleHull = ((void*)0);
   ClipSideIntoTree_r( w, side, tree->headnode );


   w = side->visibleHull;
   if ( w == ((void*)0) ) {
    continue;
   }


   si = side->shaderInfo;
   if ( si == ((void*)0) ) {
    continue;
   }



   if ( ( si->compileFlags & C_NODRAW ) && si->indexed == qfalse && !( si->compileFlags & C_FOG ) ) {
    continue;
   }


   if ( si->autosprite || si->noClip ) {
    w = side->winding;
   }


   DrawSurfaceForSide( e, b, side, w );


   if ( !( si->compileFlags & C_FOG ) ) {
    continue;
   }


   w = ReverseWinding( w );
   newSide = safe_malloc( sizeof( *side ) );
   *newSide = *side;
   newSide->visibleHull = w;
   newSide->planenum ^= 1;


   DrawSurfaceForSide( e, b, newSide, w );
  }
 }
}
