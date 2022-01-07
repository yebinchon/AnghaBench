
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int leaf; scalar_t__ hint; scalar_t__ removed; } ;
typedef TYPE_1__ vportal_t ;
struct TYPE_5__ {scalar_t__ merged; int numportals; TYPE_1__** portals; } ;
typedef TYPE_2__ leaf_t ;


 int Sys_Printf (char*,int) ;
 scalar_t__ TryMergeLeaves (int,int ) ;
 int UpdatePortals () ;
 scalar_t__ hint ;
 TYPE_2__* leafs ;
 int portalclusters ;
 scalar_t__ qfalse ;

void MergeLeaves( void ){
 int i, j, nummerges, totalnummerges;
 leaf_t *leaf;
 vportal_t *p;

 totalnummerges = 0;
 do
 {
  nummerges = 0;
  for ( i = 0; i < portalclusters; i++ )
  {
   leaf = &leafs[i];



   if ( leaf->merged >= 0 && hint == qfalse ) {
    continue;
   }


   for ( j = 0; j < leaf->numportals; j++ )
   {
    p = leaf->portals[j];

    if ( p->removed ) {
     continue;
    }

    if ( p->hint ) {
     continue;
    }
    if ( TryMergeLeaves( i, p->leaf ) ) {
     UpdatePortals();
     nummerges++;
     break;
    }
   }
  }
  totalnummerges += nummerges;
 } while ( nummerges );
 Sys_Printf( "%6d leaves merged\n", totalnummerges );
}
