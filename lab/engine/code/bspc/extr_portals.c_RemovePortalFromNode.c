
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** nodes; struct TYPE_5__** next; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_6__ {TYPE_1__* portals; } ;
typedef TYPE_2__ node_t ;


 int Error (char*) ;

void RemovePortalFromNode (portal_t *portal, node_t *l)
{
 portal_t **pp, *t;

 int s, i, n;
 portal_t *p;
 portal_t *portals[4096];


 pp = &l->portals;
 while (1)
 {
  t = *pp;
  if (!t)
   Error ("RemovePortalFromNode: portal not in leaf");

  if ( t == portal )
   break;

  if (t->nodes[0] == l)
   pp = &t->next[0];
  else if (t->nodes[1] == l)
   pp = &t->next[1];
  else
   Error ("RemovePortalFromNode: portal not bounding leaf");
 }

 if (portal->nodes[0] == l)
 {
  *pp = portal->next[0];
  portal->nodes[0] = ((void*)0);
 }
 else if (portal->nodes[1] == l)
 {
  *pp = portal->next[1];
  portal->nodes[1] = ((void*)0);
 }
 else
 {
  Error("RemovePortalFromNode: mislinked portal");
 }

 n = 0;
 for (p = l->portals; p; p = p->next[s])
 {
  for (i = 0; i < n; i++)
  {
   if (p == portals[i]) Error("RemovePortalFromNode: circular linked\n");
  }
  if (p->nodes[0] != l && p->nodes[1] != l)
  {
   Error("RemovePortalFromNodes: portal does not belong to node\n");
  }
  portals[n] = p;
  s = (p->nodes[1] == l);

 }

}
