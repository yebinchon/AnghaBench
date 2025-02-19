
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_18__ {float lightRadius; int lightOrigin; } ;
typedef TYPE_6__ pshadow_t ;
struct TYPE_19__ {scalar_t__* visCounts; scalar_t__* mins; scalar_t__* maxs; int contents; int firstmarksurface; int nummarksurfaces; struct TYPE_19__** children; TYPE_1__* plane; } ;
typedef TYPE_7__ mnode_t ;
struct TYPE_20__ {float radius; int origin; } ;
typedef TYPE_8__ dlight_t ;
struct TYPE_16__ {int flags; scalar_t__** visBounds; int * frustum; } ;
struct TYPE_14__ {int c_leafs; } ;
struct TYPE_17__ {int num_dlights; int num_pshadows; TYPE_6__* pshadows; TYPE_8__* dlights; } ;
struct TYPE_21__ {size_t visIndex; scalar_t__* visCounts; scalar_t__ viewCount; TYPE_3__* world; TYPE_4__ viewParms; TYPE_2__ pc; TYPE_5__ refdef; } ;
struct TYPE_15__ {int* marksurfaces; scalar_t__* surfacesViewCount; int* surfacesDlightBits; int* surfacesPshadowBits; } ;
struct TYPE_13__ {float dist; int normal; } ;
struct TYPE_12__ {int integer; } ;


 int BoxOnPlaneSide (scalar_t__*,scalar_t__*,int *) ;
 float DotProduct (int ,int ) ;
 int VPF_DEPTHSHADOW ;
 TYPE_10__* r_nocull ;
 TYPE_9__ tr ;

__attribute__((used)) static void R_RecursiveWorldNode( mnode_t *node, uint32_t planeBits, uint32_t dlightBits, uint32_t pshadowBits ) {

 do {
  uint32_t newDlights[2];
  uint32_t newPShadows[2];



  if (!(tr.viewParms.flags & VPF_DEPTHSHADOW) && node->visCounts[tr.visIndex] != tr.visCounts[tr.visIndex]) {
   return;
  }




  if ( !r_nocull->integer ) {
   int r;

   if ( planeBits & 1 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[0]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~1;
    }
   }

   if ( planeBits & 2 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[1]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~2;
    }
   }

   if ( planeBits & 4 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[2]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~4;
    }
   }

   if ( planeBits & 8 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[3]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~8;
    }
   }

   if ( planeBits & 16 ) {
    r = BoxOnPlaneSide(node->mins, node->maxs, &tr.viewParms.frustum[4]);
    if (r == 2) {
     return;
    }
    if ( r == 1 ) {
     planeBits &= ~16;
    }
   }
  }

  if ( node->contents != -1 ) {
   break;
  }





  newDlights[0] = 0;
  newDlights[1] = 0;
  if ( dlightBits ) {
   int i;

   for ( i = 0 ; i < tr.refdef.num_dlights ; i++ ) {
    dlight_t *dl;
    float dist;

    if ( dlightBits & ( 1 << i ) ) {
     dl = &tr.refdef.dlights[i];
     dist = DotProduct( dl->origin, node->plane->normal ) - node->plane->dist;

     if ( dist > -dl->radius ) {
      newDlights[0] |= ( 1 << i );
     }
     if ( dist < dl->radius ) {
      newDlights[1] |= ( 1 << i );
     }
    }
   }
  }

  newPShadows[0] = 0;
  newPShadows[1] = 0;
  if ( pshadowBits ) {
   int i;

   for ( i = 0 ; i < tr.refdef.num_pshadows ; i++ ) {
    pshadow_t *shadow;
    float dist;

    if ( pshadowBits & ( 1 << i ) ) {
     shadow = &tr.refdef.pshadows[i];
     dist = DotProduct( shadow->lightOrigin, node->plane->normal ) - node->plane->dist;

     if ( dist > -shadow->lightRadius ) {
      newPShadows[0] |= ( 1 << i );
     }
     if ( dist < shadow->lightRadius ) {
      newPShadows[1] |= ( 1 << i );
     }
    }
   }
  }


  R_RecursiveWorldNode (node->children[0], planeBits, newDlights[0], newPShadows[0] );


  node = node->children[1];
  dlightBits = newDlights[1];
  pshadowBits = newPShadows[1];
 } while ( 1 );

 {

  int c;
  int surf, *view;

  tr.pc.c_leafs++;


  if ( node->mins[0] < tr.viewParms.visBounds[0][0] ) {
   tr.viewParms.visBounds[0][0] = node->mins[0];
  }
  if ( node->mins[1] < tr.viewParms.visBounds[0][1] ) {
   tr.viewParms.visBounds[0][1] = node->mins[1];
  }
  if ( node->mins[2] < tr.viewParms.visBounds[0][2] ) {
   tr.viewParms.visBounds[0][2] = node->mins[2];
  }

  if ( node->maxs[0] > tr.viewParms.visBounds[1][0] ) {
   tr.viewParms.visBounds[1][0] = node->maxs[0];
  }
  if ( node->maxs[1] > tr.viewParms.visBounds[1][1] ) {
   tr.viewParms.visBounds[1][1] = node->maxs[1];
  }
  if ( node->maxs[2] > tr.viewParms.visBounds[1][2] ) {
   tr.viewParms.visBounds[1][2] = node->maxs[2];
  }


  view = tr.world->marksurfaces + node->firstmarksurface;

  c = node->nummarksurfaces;
  while (c--) {

   surf = *view;
   if (tr.world->surfacesViewCount[surf] != tr.viewCount)
   {
    tr.world->surfacesViewCount[surf] = tr.viewCount;
    tr.world->surfacesDlightBits[surf] = dlightBits;
    tr.world->surfacesPshadowBits[surf] = pshadowBits;
   }
   else
   {
    tr.world->surfacesDlightBits[surf] |= dlightBits;
    tr.world->surfacesPshadowBits[surf] |= pshadowBits;
   }
   view++;
  }
 }

}
