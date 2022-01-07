
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ planenum; struct TYPE_8__** children; TYPE_2__* faces; int maxs; int mins; } ;
typedef TYPE_1__ node_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_2__ face_t ;
struct TYPE_10__ {int planenum; void* firstface; int* children; void* numfaces; int maxs; int mins; } ;
typedef TYPE_3__ dnode_t ;


 int EmitFace (TYPE_2__*) ;
 int EmitLeaf (TYPE_1__*) ;
 int Error (char*) ;
 size_t MAX_MAP_NODES ;
 scalar_t__ PLANENUM_LEAF ;
 int VectorCopy (int ,int ) ;
 int c_facenodes ;
 int c_nofaces ;
 TYPE_3__* dnodes ;
 void* numfaces ;
 int numleafs ;
 size_t numnodes ;
 int * planeused ;

int EmitDrawNode_r (node_t *node)
{
 dnode_t *n;
 face_t *f;
 int i;

 if (node->planenum == PLANENUM_LEAF)
 {
  EmitLeaf (node);
  return -numleafs;
 }


 if (numnodes == MAX_MAP_NODES)
  Error ("MAX_MAP_NODES");
 n = &dnodes[numnodes];
 numnodes++;

 VectorCopy (node->mins, n->mins);
 VectorCopy (node->maxs, n->maxs);

 planeused[node->planenum]++;
 planeused[node->planenum^1]++;

 if (node->planenum & 1)
  Error ("WriteDrawNodes_r: odd planenum");
 n->planenum = node->planenum;
 n->firstface = numfaces;

 if (!node->faces)
  c_nofaces++;
 else
  c_facenodes++;

 for (f=node->faces ; f ; f=f->next)
  EmitFace (f);

 n->numfaces = numfaces - n->firstface;





 for (i=0 ; i<2 ; i++)
 {
  if (node->children[i]->planenum == PLANENUM_LEAF)
  {
   n->children[i] = -(numleafs + 1);
   EmitLeaf (node->children[i]);
  }
  else
  {
   n->children[i] = numnodes;
   EmitDrawNode_r (node->children[i]);
  }
 }

 return n - dnodes;
}
