
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ planenum; int contents; struct TYPE_3__** children; } ;
typedef TYPE_1__ node_t ;


 int CONTENTS_SOLID ;
 scalar_t__ PLANENUM_LEAF ;

int ClusterContents (node_t *node)
{
 int c1, c2, c;

 if (node->planenum == PLANENUM_LEAF)
  return node->contents;

 c1 = ClusterContents(node->children[0]);
 c2 = ClusterContents(node->children[1]);
 c = c1|c2;



 if ( ! (c1&CONTENTS_SOLID) || ! (c2&CONTENTS_SOLID) )
  c &= ~CONTENTS_SOLID;
 return c;
}
