
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int leaf; } ;
typedef TYPE_1__ vportal_t ;
typedef int byte ;
struct TYPE_5__ {int merged; } ;


 int CountBits (int*,int) ;
 TYPE_3__* leafs ;
 int numportals ;
 int portalclusters ;
 TYPE_1__* portals ;

int LeafVectorFromPortalVector( byte *portalbits, byte *leafbits ){
 int i, j, leafnum;
 vportal_t *p;
 int c_leafs;


 for ( i = 0 ; i < numportals * 2 ; i++ )
 {
  if ( portalbits[i >> 3] & ( 1 << ( i & 7 ) ) ) {
   p = portals + i;
   leafbits[p->leaf >> 3] |= ( 1 << ( p->leaf & 7 ) );
  }
 }

 for ( j = 0; j < portalclusters; j++ )
 {
  leafnum = j;
  while ( leafs[leafnum].merged >= 0 )
   leafnum = leafs[leafnum].merged;

  if ( leafbits[leafnum >> 3] & ( 1 << ( leafnum & 7 ) ) ) {
   leafbits[j >> 3] |= ( 1 << ( j & 7 ) );
  }
 }

 c_leafs = CountBits( leafbits, portalclusters );

 return c_leafs;
}
