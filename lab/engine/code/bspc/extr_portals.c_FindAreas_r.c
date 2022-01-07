
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ planenum; int contents; int occupied; scalar_t__ area; struct TYPE_4__** children; } ;
typedef TYPE_1__ node_t ;


 int CONTENTS_AREAPORTAL ;
 int CONTENTS_SOLID ;
 int FloodAreas_r (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int c_areas ;

void FindAreas_r (node_t *node)
{
 if (node->planenum != PLANENUM_LEAF)
 {
  FindAreas_r (node->children[0]);
  FindAreas_r (node->children[1]);
  return;
 }

 if (node->area)
  return;

 if (node->contents & CONTENTS_SOLID)
  return;

 if (!node->occupied)
  return;



 if (node->contents == CONTENTS_AREAPORTAL)
  return;

 c_areas++;
 FloodAreas_r (node);
}
