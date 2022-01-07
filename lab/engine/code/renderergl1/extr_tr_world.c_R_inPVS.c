
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_4__ {int cluster; } ;
typedef TYPE_1__ mnode_t ;
typedef int byte ;
struct TYPE_5__ {int* (* CM_ClusterPVS ) (int) ;} ;


 TYPE_1__* R_PointInLeaf (int const) ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ ri ;
 int* stub1 (int) ;

qboolean R_inPVS( const vec3_t p1, const vec3_t p2 ) {
 mnode_t *leaf;
 byte *vis;

 leaf = R_PointInLeaf( p1 );
 vis = ri.CM_ClusterPVS( leaf->cluster );
 leaf = R_PointInLeaf( p2 );

 if ( !(vis[leaf->cluster>>3] & (1<<(leaf->cluster&7))) ) {
  return qfalse;
 }
 return qtrue;
}
