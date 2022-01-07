
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__** children; TYPE_2__* tmparea; } ;
typedef TYPE_1__ tmp_node_t ;
struct TYPE_6__ {struct TYPE_6__* mergedarea; } ;
typedef TYPE_2__ tmp_area_t ;



tmp_node_t *AAS_RefreshMergedTree_r(tmp_node_t *tmpnode)
{
 tmp_area_t *tmparea;


 if (!tmpnode) return ((void*)0);

 if (tmpnode->tmparea)
 {
  tmparea = tmpnode->tmparea;
  while(tmparea->mergedarea) tmparea = tmparea->mergedarea;
  tmpnode->tmparea = tmparea;
  return tmpnode;
 }

 tmpnode->children[0] = AAS_RefreshMergedTree_r(tmpnode->children[0]);
 tmpnode->children[1] = AAS_RefreshMergedTree_r(tmpnode->children[1]);
 return tmpnode;
}
