
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_12__ {int * winding; TYPE_3__** nodes; struct TYPE_12__** next; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_13__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_14__ {size_t planenum; TYPE_1__* portals; struct TYPE_14__** children; } ;
typedef TYPE_3__ node_t ;


 int AddPortalToNodes (TYPE_1__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_1__* AllocPortal () ;
 int ClipWindingEpsilon (int *,int ,int ,int ,int **,int **) ;
 int Error (char*) ;
 int FreeWinding (int *) ;
 int RemovePortalFromNode (TYPE_1__*,TYPE_3__*) ;
 int SPLIT_WINDING_EPSILON ;
 scalar_t__ WindingIsTiny (int *) ;
 int c_tinyportals ;
 TYPE_2__* mapplanes ;

void SplitNodePortals (node_t *node)
{
 portal_t *p, *next_portal, *new_portal;
 node_t *f, *b, *other_node;
 int side;
 plane_t *plane;
 winding_t *frontwinding, *backwinding;

 plane = &mapplanes[node->planenum];
 f = node->children[0];
 b = node->children[1];

 for (p = node->portals ; p ; p = next_portal)
 {
  if (p->nodes[0] == node) side = 0;
  else if (p->nodes[1] == node) side = 1;
  else Error ("SplitNodePortals: mislinked portal");
  next_portal = p->next[side];

  other_node = p->nodes[!side];
  RemovePortalFromNode (p, p->nodes[0]);
  RemovePortalFromNode (p, p->nodes[1]);




  ClipWindingEpsilon (p->winding, plane->normal, plane->dist,
    SPLIT_WINDING_EPSILON, &frontwinding, &backwinding);

  if (frontwinding && WindingIsTiny(frontwinding))
  {
   FreeWinding (frontwinding);
   frontwinding = ((void*)0);
   c_tinyportals++;
  }

  if (backwinding && WindingIsTiny(backwinding))
  {
   FreeWinding (backwinding);
   backwinding = ((void*)0);
   c_tinyportals++;
  }
  if (!frontwinding && !backwinding)
  {
   continue;
  }

  if (!frontwinding)
  {
   FreeWinding (backwinding);
   if (side == 0) AddPortalToNodes (p, b, other_node);
   else AddPortalToNodes (p, other_node, b);
   continue;
  }
  if (!backwinding)
  {
   FreeWinding (frontwinding);
   if (side == 0) AddPortalToNodes (p, f, other_node);
   else AddPortalToNodes (p, other_node, f);
   continue;
  }


  new_portal = AllocPortal();
  *new_portal = *p;
  new_portal->winding = backwinding;
  FreeWinding (p->winding);
  p->winding = frontwinding;

  if (side == 0)
  {
   AddPortalToNodes (p, f, other_node);
   AddPortalToNodes (new_portal, b, other_node);
  }
  else
  {
   AddPortalToNodes (p, other_node, f);
   AddPortalToNodes (new_portal, other_node, b);
  }
 }

 node->portals = ((void*)0);
}
