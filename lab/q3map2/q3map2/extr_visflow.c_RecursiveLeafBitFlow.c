
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int leaf; scalar_t__ portalflood; scalar_t__ removed; } ;
typedef TYPE_1__ vportal_t ;
struct TYPE_6__ {int numportals; TYPE_1__** portals; } ;
typedef TYPE_2__ leaf_t ;
typedef int byte ;


 int MAX_PORTALS ;
 TYPE_2__* leafs ;
 int portallongs ;
 TYPE_1__* portals ;

void RecursiveLeafBitFlow( int leafnum, byte *mightsee, byte *cansee ){
 vportal_t *p;
 leaf_t *leaf;
 int i, j;
 long more;
 int pnum;
 byte newmight[MAX_PORTALS / 8];

 leaf = &leafs[leafnum];


 for ( i = 0 ; i < leaf->numportals ; i++ )
 {
  p = leaf->portals[i];
  if ( p->removed ) {
   continue;
  }
  pnum = p - portals;


  if ( !( mightsee[pnum >> 3] & ( 1 << ( pnum & 7 ) ) ) ) {
   continue;
  }


  more = 0;
  for ( j = 0 ; j < portallongs ; j++ )
  {
   ( (long *)newmight )[j] = ( (long *)mightsee )[j]
           & ( (long *)p->portalflood )[j];
   more |= ( (long *)newmight )[j] & ~( (long *)cansee )[j];
  }

  if ( !more ) {
   continue;

  }
  cansee[pnum >> 3] |= ( 1 << ( pnum & 7 ) );

  RecursiveLeafBitFlow( p->leaf, newmight, cansee );
 }
}
