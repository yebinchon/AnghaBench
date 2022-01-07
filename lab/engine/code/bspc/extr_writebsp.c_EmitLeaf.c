
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ** face; TYPE_2__** nodes; struct TYPE_8__** next; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_9__ {int contents; TYPE_1__* portals; TYPE_4__* brushlist; int maxs; int mins; int area; int cluster; } ;
typedef TYPE_2__ node_t ;
typedef int face_t ;
struct TYPE_10__ {int contents; int firstleafbrush; int numleafbrushes; void* firstleafface; void* numleaffaces; int maxs; int mins; int area; int cluster; } ;
typedef TYPE_3__ dleaf_t ;
struct TYPE_11__ {int original; struct TYPE_11__* next; } ;
typedef TYPE_4__ bspbrush_t ;


 int CONTENTS_SOLID ;
 int EmitMarkFace (TYPE_3__*,int *) ;
 int Error (char*) ;
 int MAX_MAP_LEAFBRUSHES ;
 size_t MAX_MAP_LEAFS ;
 int VectorCopy (int ,int ) ;
 int* dleafbrushes ;
 TYPE_3__* dleafs ;
 int mapbrushes ;
 int numleafbrushes ;
 void* numleaffaces ;
 size_t numleafs ;

void EmitLeaf (node_t *node)
{
 dleaf_t *leaf_p;
 portal_t *p;
 int s;
 face_t *f;
 bspbrush_t *b;
 int i;
 int brushnum;


 if (numleafs >= MAX_MAP_LEAFS)
  Error ("MAX_MAP_LEAFS");

 leaf_p = &dleafs[numleafs];
 numleafs++;

 leaf_p->contents = node->contents;
 leaf_p->cluster = node->cluster;
 leaf_p->area = node->area;




 VectorCopy (node->mins, leaf_p->mins);
 VectorCopy (node->maxs, leaf_p->maxs);




 leaf_p->firstleafbrush = numleafbrushes;
 for (b=node->brushlist ; b ; b=b->next)
 {
  if (numleafbrushes >= MAX_MAP_LEAFBRUSHES)
   Error ("MAX_MAP_LEAFBRUSHES");

  brushnum = b->original - mapbrushes;
  for (i=leaf_p->firstleafbrush ; i<numleafbrushes ; i++)
   if (dleafbrushes[i] == brushnum)
    break;
  if (i == numleafbrushes)
  {
   dleafbrushes[numleafbrushes] = brushnum;
   numleafbrushes++;
  }
 }
 leaf_p->numleafbrushes = numleafbrushes - leaf_p->firstleafbrush;




 if (leaf_p->contents & CONTENTS_SOLID)
  return;

 leaf_p->firstleafface = numleaffaces;

 for (p = node->portals ; p ; p = p->next[s])
 {
  s = (p->nodes[1] == node);
  f = p->face[s];
  if (!f)
   continue;

  EmitMarkFace (leaf_p, f);
 }

 leaf_p->numleaffaces = numleaffaces - leaf_p->firstleafface;
}
