
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; scalar_t__ portalvis; scalar_t__ removed; } ;
typedef TYPE_1__ vportal_t ;
struct TYPE_6__ {int merged; int numportals; TYPE_1__** portals; } ;
typedef TYPE_2__ leaf_t ;
typedef int byte ;


 int Error (char*) ;
 int LeafVectorFromPortalVector (int*,int*) ;
 int MAX_MAP_LEAFS ;
 int MAX_PORTALS ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,int,int) ;
 scalar_t__ VIS_HEADER_SIZE ;
 scalar_t__ bspVisBytes ;
 int leafbytes ;
 TYPE_2__* leafs ;
 int memcpy (scalar_t__,int*,int) ;
 int memset (int*,int ,int) ;
 int portalbytes ;
 int portallongs ;
 TYPE_1__* portals ;
 scalar_t__ stat_done ;
 int totalvis ;

void ClusterMerge( int leafnum ){
 leaf_t *leaf;
 byte portalvector[MAX_PORTALS / 8];
 byte uncompressed[MAX_MAP_LEAFS / 8];
 int i, j;
 int numvis, mergedleafnum;
 vportal_t *p;
 int pnum;



 mergedleafnum = leafnum;
 while ( leafs[mergedleafnum].merged >= 0 )
  mergedleafnum = leafs[mergedleafnum].merged;

 memset( portalvector, 0, portalbytes );
 leaf = &leafs[mergedleafnum];
 for ( i = 0; i < leaf->numportals; i++ )
 {
  p = leaf->portals[i];
  if ( p->removed ) {
   continue;
  }

  if ( p->status != stat_done ) {
   Error( "portal not done" );
  }
  for ( j = 0 ; j < portallongs ; j++ )
   ( (long *)portalvector )[j] |= ( (long *)p->portalvis )[j];
  pnum = p - portals;
  portalvector[pnum >> 3] |= 1 << ( pnum & 7 );
 }

 memset( uncompressed, 0, leafbytes );

 uncompressed[mergedleafnum >> 3] |= ( 1 << ( mergedleafnum & 7 ) );

 numvis = LeafVectorFromPortalVector( portalvector, uncompressed );






 numvis++;

 totalvis += numvis;

 Sys_FPrintf( SYS_VRB,"cluster %4i : %4i visible\n", leafnum, numvis );

 memcpy( bspVisBytes + VIS_HEADER_SIZE + leafnum * leafbytes, uncompressed, leafbytes );
}
