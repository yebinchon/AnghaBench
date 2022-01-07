
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int numpoints; int ** p; } ;
typedef TYPE_2__ winding_t ;
typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_8__ {int normal; } ;
struct TYPE_10__ {int compileFlags; TYPE_4__** nodes; TYPE_1__ plane; TYPE_2__* winding; struct TYPE_10__** next; } ;
typedef TYPE_3__ portal_t ;
struct TYPE_11__ {scalar_t__ planenum; int cluster; TYPE_3__* portals; scalar_t__ opaque; struct TYPE_11__** children; } ;
typedef TYPE_4__ node_t ;


 int C_HINT ;
 double DotProduct (int ,int ) ;
 scalar_t__ PLANENUM_LEAF ;
 int PortalPassable (TYPE_3__*) ;
 int WindingPlane (TYPE_2__*,int ,int *) ;
 int WriteFloat (int ,int ) ;
 int fprintf (int ,char*,...) ;
 int pf ;

void WritePortalFile_r( node_t *node ){
 int i, s;
 portal_t *p;
 winding_t *w;
 vec3_t normal;
 vec_t dist;


 if ( node->planenum != PLANENUM_LEAF ) {
  WritePortalFile_r( node->children[0] );
  WritePortalFile_r( node->children[1] );
  return;
 }

 if ( node->opaque ) {
  return;
 }

 for ( p = node->portals ; p ; p = p->next[s] )
 {
  w = p->winding;
  s = ( p->nodes[1] == node );
  if ( w && p->nodes[0] == node ) {
   if ( !PortalPassable( p ) ) {
    continue;
   }






   WindingPlane( w, normal, &dist );
   if ( DotProduct( p->plane.normal, normal ) < 0.99 ) {
    fprintf( pf,"%i %i %i ",w->numpoints, p->nodes[1]->cluster, p->nodes[0]->cluster );
   }
   else{
    fprintf( pf,"%i %i %i ",w->numpoints, p->nodes[0]->cluster, p->nodes[1]->cluster );
   }


   if ( p->compileFlags & C_HINT ) {
    fprintf( pf, "1 " );
   }
   else{
    fprintf( pf, "0 " );
   }


   for ( i = 0 ; i < w->numpoints ; i++ )
   {
    fprintf( pf,"(" );
    WriteFloat( pf, w->p[i][0] );
    WriteFloat( pf, w->p[i][1] );
    WriteFloat( pf, w->p[i][2] );
    fprintf( pf,") " );
   }
   fprintf( pf,"\n" );
  }
 }

}
