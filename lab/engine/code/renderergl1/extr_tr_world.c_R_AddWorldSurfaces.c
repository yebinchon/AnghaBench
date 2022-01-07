
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int integer; } ;
struct TYPE_8__ {int rdflags; unsigned long long num_dlights; } ;
struct TYPE_6__ {int * visBounds; } ;
struct TYPE_9__ {int currentEntityNum; int shiftedEntityNum; TYPE_3__ refdef; TYPE_2__* world; TYPE_1__ viewParms; } ;
struct TYPE_7__ {int nodes; } ;


 int ClearBounds (int ,int ) ;
 unsigned long long MAX_DLIGHTS ;
 int QSORT_REFENTITYNUM_SHIFT ;
 int RDF_NOWORLDMODEL ;
 int REFENTITYNUM_WORLD ;
 int R_MarkLeaves () ;
 int R_RecursiveWorldNode (int ,int,unsigned long long) ;
 TYPE_5__* r_drawworld ;
 TYPE_4__ tr ;

void R_AddWorldSurfaces (void) {
 if ( !r_drawworld->integer ) {
  return;
 }

 if ( tr.refdef.rdflags & RDF_NOWORLDMODEL ) {
  return;
 }

 tr.currentEntityNum = REFENTITYNUM_WORLD;
 tr.shiftedEntityNum = tr.currentEntityNum << QSORT_REFENTITYNUM_SHIFT;


 R_MarkLeaves ();


 ClearBounds( tr.viewParms.visBounds[0], tr.viewParms.visBounds[1] );


 if ( tr.refdef.num_dlights > MAX_DLIGHTS ) {
  tr.refdef.num_dlights = MAX_DLIGHTS ;
 }
 R_RecursiveWorldNode( tr.world->nodes, 15, ( 1ULL << tr.refdef.num_dlights ) - 1 );
}
