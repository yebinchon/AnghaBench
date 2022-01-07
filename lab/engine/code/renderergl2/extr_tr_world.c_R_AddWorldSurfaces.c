
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int integer; } ;
struct TYPE_8__ {int rdflags; unsigned long long num_dlights; unsigned long long num_pshadows; int dlightMask; } ;
struct TYPE_6__ {int flags; int * visBounds; } ;
struct TYPE_9__ {int currentEntityNum; int shiftedEntityNum; scalar_t__ viewCount; TYPE_3__ refdef; TYPE_2__* world; TYPE_1__ viewParms; } ;
struct TYPE_7__ {int numWorldSurfaces; scalar_t__* surfacesViewCount; int * surfacesDlightBits; int * surfacesPshadowBits; scalar_t__ surfaces; int nodes; } ;


 int ClearBounds (int ,int ) ;
 unsigned long long MAX_DLIGHTS ;
 unsigned long long MAX_DRAWN_PSHADOWS ;
 int QSORT_REFENTITYNUM_SHIFT ;
 int RDF_NOWORLDMODEL ;
 int REFENTITYNUM_WORLD ;
 int R_AddWorldSurface (scalar_t__,int ,int ) ;
 int R_MarkLeaves () ;
 int R_RecursiveWorldNode (int ,int,int,int) ;
 int VPF_DEPTHSHADOW ;
 int VPF_FARPLANEFRUSTUM ;
 int VPF_SHADOWMAP ;
 TYPE_5__* r_drawworld ;
 TYPE_4__ tr ;

void R_AddWorldSurfaces (void) {
 uint32_t planeBits, dlightBits, pshadowBits;

 if ( !r_drawworld->integer ) {
  return;
 }

 if ( tr.refdef.rdflags & RDF_NOWORLDMODEL ) {
  return;
 }

 tr.currentEntityNum = REFENTITYNUM_WORLD;
 tr.shiftedEntityNum = tr.currentEntityNum << QSORT_REFENTITYNUM_SHIFT;


 if (!(tr.viewParms.flags & VPF_DEPTHSHADOW))
  R_MarkLeaves ();


 ClearBounds( tr.viewParms.visBounds[0], tr.viewParms.visBounds[1] );


 if ( tr.refdef.num_dlights > MAX_DLIGHTS ) {
  tr.refdef.num_dlights = MAX_DLIGHTS ;
 }

 if ( tr.refdef.num_pshadows > MAX_DRAWN_PSHADOWS ) {
  tr.refdef.num_pshadows = MAX_DRAWN_PSHADOWS;
 }

 planeBits = (tr.viewParms.flags & VPF_FARPLANEFRUSTUM) ? 31 : 15;

 if ( tr.viewParms.flags & VPF_DEPTHSHADOW )
 {
  dlightBits = 0;
  pshadowBits = 0;
 }
 else if ( !(tr.viewParms.flags & VPF_SHADOWMAP) )
 {
  dlightBits = ( 1ULL << tr.refdef.num_dlights ) - 1;
  pshadowBits = ( 1ULL << tr.refdef.num_pshadows ) - 1;
 }
 else
 {
  dlightBits = ( 1ULL << tr.refdef.num_dlights ) - 1;
  pshadowBits = 0;
 }

 R_RecursiveWorldNode( tr.world->nodes, planeBits, dlightBits, pshadowBits);



 {
  int i;

  tr.refdef.dlightMask = 0;

  for (i = 0; i < tr.world->numWorldSurfaces; i++)
  {
   if (tr.world->surfacesViewCount[i] != tr.viewCount)
    continue;

   R_AddWorldSurface( tr.world->surfaces + i, tr.world->surfacesDlightBits[i], tr.world->surfacesPshadowBits[i] );
   tr.refdef.dlightMask |= tr.world->surfacesDlightBits[i];
  }

  tr.refdef.dlightMask = ~tr.refdef.dlightMask;
 }
}
