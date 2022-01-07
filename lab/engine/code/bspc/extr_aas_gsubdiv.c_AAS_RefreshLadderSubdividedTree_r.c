
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int planenum; struct TYPE_6__** children; int * tmparea; } ;
typedef TYPE_1__ tmp_node_t ;
typedef int tmp_area_t ;



tmp_node_t *AAS_RefreshLadderSubdividedTree_r(tmp_node_t *tmpnode, tmp_area_t *tmparea,
              tmp_node_t *tmpnode1, tmp_node_t *tmpnode2, int planenum)
{

 if (!tmpnode) return ((void*)0);

 if (tmpnode->tmparea)
 {
  if (tmpnode->tmparea == tmparea)
  {
   tmpnode->tmparea = ((void*)0);
   tmpnode->planenum = planenum;
   tmpnode->children[0] = tmpnode1;
   tmpnode->children[1] = tmpnode2;
  }
  return tmpnode;
 }

 tmpnode->children[0] = AAS_RefreshLadderSubdividedTree_r(tmpnode->children[0],
         tmparea, tmpnode1, tmpnode2, planenum);
 tmpnode->children[1] = AAS_RefreshLadderSubdividedTree_r(tmpnode->children[1],
         tmparea, tmpnode1, tmpnode2, planenum);
 return tmpnode;
}
