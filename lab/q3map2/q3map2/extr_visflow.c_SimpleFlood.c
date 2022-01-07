
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* portalfront; int* portalflood; int leaf; scalar_t__ removed; } ;
typedef TYPE_1__ vportal_t ;
struct TYPE_7__ {int numportals; TYPE_1__** portals; } ;
typedef TYPE_2__ leaf_t ;


 TYPE_2__* leafs ;
 TYPE_1__* portals ;

void SimpleFlood( vportal_t *srcportal, int leafnum ){
 int i;
 leaf_t *leaf;
 vportal_t *p;
 int pnum;

 leaf = &leafs[leafnum];

 for ( i = 0 ; i < leaf->numportals ; i++ )
 {
  p = leaf->portals[i];
  if ( p->removed ) {
   continue;
  }
  pnum = p - portals;
  if ( !( srcportal->portalfront[pnum >> 3] & ( 1 << ( pnum & 7 ) ) ) ) {
   continue;
  }

  if ( srcportal->portalflood[pnum >> 3] & ( 1 << ( pnum & 7 ) ) ) {
   continue;
  }

  srcportal->portalflood[pnum >> 3] |= ( 1 << ( pnum & 7 ) );

  SimpleFlood( srcportal, p->leaf );
 }
}
