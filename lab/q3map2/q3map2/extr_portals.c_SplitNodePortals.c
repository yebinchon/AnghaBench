
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int * p; } ;
typedef TYPE_1__ winding_t ;
struct TYPE_19__ {TYPE_1__* winding; TYPE_4__** nodes; struct TYPE_19__** next; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_20__ {int dist; int normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_21__ {size_t planenum; TYPE_2__* portals; int tinyportals; int referencepoint; struct TYPE_21__** children; } ;
typedef TYPE_4__ node_t ;


 int AddPortalToNodes (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;
 TYPE_2__* AllocPortal () ;
 int ClipWindingEpsilon (TYPE_1__*,int ,int ,int ,TYPE_1__**,TYPE_1__**) ;
 int Error (char*) ;
 int FreeWinding (TYPE_1__*) ;
 int RemovePortalFromNode (TYPE_2__*,TYPE_4__*) ;
 int SPLIT_WINDING_EPSILON ;
 int VectorCopy (int ,int ) ;
 scalar_t__ WindingIsTiny (TYPE_1__*) ;
 int c_tinyportals ;
 TYPE_3__* mapplanes ;

void SplitNodePortals( node_t *node ){
 portal_t *p, *next_portal, *new_portal;
 node_t *f, *b, *other_node;
 int side;
 plane_t *plane;
 winding_t *frontwinding, *backwinding;

 plane = &mapplanes[node->planenum];
 f = node->children[0];
 b = node->children[1];

 for ( p = node->portals ; p ; p = next_portal )
 {
  if ( p->nodes[0] == node ) {
   side = 0;
  }
  else if ( p->nodes[1] == node ) {
   side = 1;
  }
  else{
   Error( "SplitNodePortals: mislinked portal" );
  }
  next_portal = p->next[side];

  other_node = p->nodes[!side];
  RemovePortalFromNode( p, p->nodes[0] );
  RemovePortalFromNode( p, p->nodes[1] );




  ClipWindingEpsilon( p->winding, plane->normal, plane->dist,
       SPLIT_WINDING_EPSILON, &frontwinding, &backwinding );

  if ( frontwinding && WindingIsTiny( frontwinding ) ) {
   if ( !f->tinyportals ) {
    VectorCopy( frontwinding->p[0], f->referencepoint );
   }
   f->tinyportals++;
   if ( !other_node->tinyportals ) {
    VectorCopy( frontwinding->p[0], other_node->referencepoint );
   }
   other_node->tinyportals++;

   FreeWinding( frontwinding );
   frontwinding = ((void*)0);
   c_tinyportals++;
  }

  if ( backwinding && WindingIsTiny( backwinding ) ) {
   if ( !b->tinyportals ) {
    VectorCopy( backwinding->p[0], b->referencepoint );
   }
   b->tinyportals++;
   if ( !other_node->tinyportals ) {
    VectorCopy( backwinding->p[0], other_node->referencepoint );
   }
   other_node->tinyportals++;

   FreeWinding( backwinding );
   backwinding = ((void*)0);
   c_tinyportals++;
  }

  if ( !frontwinding && !backwinding ) {
   continue;
  }

  if ( !frontwinding ) {
   FreeWinding( backwinding );
   if ( side == 0 ) {
    AddPortalToNodes( p, b, other_node );
   }
   else{
    AddPortalToNodes( p, other_node, b );
   }
   continue;
  }
  if ( !backwinding ) {
   FreeWinding( frontwinding );
   if ( side == 0 ) {
    AddPortalToNodes( p, f, other_node );
   }
   else{
    AddPortalToNodes( p, other_node, f );
   }
   continue;
  }


  new_portal = AllocPortal();
  *new_portal = *p;
  new_portal->winding = backwinding;
  FreeWinding( p->winding );
  p->winding = frontwinding;

  if ( side == 0 ) {
   AddPortalToNodes( p, f, other_node );
   AddPortalToNodes( new_portal, b, other_node );
  }
  else
  {
   AddPortalToNodes( p, other_node, f );
   AddPortalToNodes( new_portal, other_node, b );
  }
 }

 node->portals = ((void*)0);
}
