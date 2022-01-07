
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int normal; } ;
struct TYPE_7__ {scalar_t__ leaf; scalar_t__ removed; int hint; int * winding; TYPE_1__ plane; } ;
typedef TYPE_2__ vportal_t ;
struct TYPE_8__ {scalar_t__ merged; int numportals; TYPE_2__** portals; } ;
typedef TYPE_3__ leaf_t ;
typedef int fixedWinding_t ;


 int SetPortalSphere (TYPE_2__*) ;
 int Sys_Printf (char*,int) ;
 int * TryMergeWinding (int *,int *,int ) ;
 int free (int *) ;
 TYPE_3__* leafs ;
 int portalclusters ;
 scalar_t__ qtrue ;

void MergeLeafPortals( void ){
 int i, j, k, nummerges, hintsmerged;
 leaf_t *leaf;
 vportal_t *p1, *p2;
 fixedWinding_t *w;

 nummerges = 0;
 hintsmerged = 0;
 for ( i = 0; i < portalclusters; i++ )
 {
  leaf = &leafs[i];
  if ( leaf->merged >= 0 ) {
   continue;
  }
  for ( j = 0; j < leaf->numportals; j++ )
  {
   p1 = leaf->portals[j];
   if ( p1->removed ) {
    continue;
   }
   for ( k = j + 1; k < leaf->numportals; k++ )
   {
    p2 = leaf->portals[k];
    if ( p2->removed ) {
     continue;
    }
    if ( p1->leaf == p2->leaf ) {
     w = TryMergeWinding( p1->winding, p2->winding, p1->plane.normal );
     if ( w ) {
      free( p1->winding );
      p1->winding = w;
      if ( p1->hint && p2->hint ) {
       hintsmerged++;
      }
      p1->hint |= p2->hint;
      SetPortalSphere( p1 );
      p2->removed = qtrue;
      nummerges++;
      i--;
      break;
     }
    }
   }
   if ( k < leaf->numportals ) {
    break;
   }
  }
 }
 Sys_Printf( "%6d portals merged\n", nummerges );
 Sys_Printf( "%6d hint portals merged\n", hintsmerged );
}
