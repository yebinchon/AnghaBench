
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int headnode; } ;
typedef TYPE_2__ tree_t ;
struct TYPE_12__ {TYPE_4__* brushes; } ;
typedef TYPE_3__ entity_t ;
struct TYPE_13__ {int numsides; TYPE_1__* sides; scalar_t__ detail; struct TYPE_13__* next; } ;
typedef TYPE_4__ brush_t ;
struct TYPE_10__ {int visible; scalar_t__ winding; } ;


 TYPE_4__* CopyBrush (TYPE_4__*) ;
 int FilterBrushIntoTree_r (TYPE_4__*,int ) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 int qtrue ;

void FilterStructuralBrushesIntoTree( entity_t *e, tree_t *tree ) {
 brush_t *b, *newb;
 int r;
 int c_unique, c_clusters;
 int i;

 Sys_FPrintf( SYS_VRB, "--- FilterStructuralBrushesIntoTree ---\n" );

 c_unique = 0;
 c_clusters = 0;
 for ( b = e->brushes ; b ; b = b->next ) {
  if ( b->detail ) {
   continue;
  }
  c_unique++;
  newb = CopyBrush( b );
  r = FilterBrushIntoTree_r( newb, tree->headnode );
  c_clusters += r;


  if ( r ) {
   for ( i = 0 ; i < b->numsides ; i++ ) {
    if ( b->sides[i].winding ) {
     b->sides[i].visible = qtrue;
    }
   }
  }
 }


 Sys_FPrintf( SYS_VRB, "%9d structural brushes\n", c_unique );
 Sys_FPrintf( SYS_VRB, "%9d cluster references\n", c_clusters );
}
