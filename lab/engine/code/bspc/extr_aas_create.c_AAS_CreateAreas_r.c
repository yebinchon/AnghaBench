
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ planenum; struct TYPE_8__** children; } ;
typedef TYPE_1__ tmp_node_t ;
struct TYPE_9__ {scalar_t__ planenum; int contents; struct TYPE_9__** children; } ;
typedef TYPE_2__ node_t ;


 TYPE_1__* AAS_AllocTmpNode () ;
 TYPE_1__* AAS_CreateArea (TYPE_2__*) ;
 int CONTENTS_SOLID ;
 scalar_t__ PLANENUM_LEAF ;

tmp_node_t *AAS_CreateAreas_r(node_t *node)
{
 tmp_node_t *tmpnode;


 if (node->planenum != PLANENUM_LEAF)
 {

  tmpnode = AAS_AllocTmpNode();
  tmpnode->planenum = node->planenum;
  tmpnode->children[0] = AAS_CreateAreas_r(node->children[0]);
  tmpnode->children[1] = AAS_CreateAreas_r(node->children[1]);
  return tmpnode;
 }

 if (node->contents & CONTENTS_SOLID)
 {

  return ((void*)0);
 }

 return AAS_CreateArea(node);
}
