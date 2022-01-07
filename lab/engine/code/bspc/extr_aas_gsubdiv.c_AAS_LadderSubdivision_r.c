
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__** children; scalar_t__ tmparea; } ;
typedef TYPE_1__ tmp_node_t ;


 TYPE_1__* AAS_LadderSubdivideArea_r (TYPE_1__*) ;

tmp_node_t *AAS_LadderSubdivision_r(tmp_node_t *tmpnode)
{

 if (!tmpnode) return 0;

 if (tmpnode->tmparea) return AAS_LadderSubdivideArea_r(tmpnode);

 tmpnode->children[0] = AAS_LadderSubdivision_r(tmpnode->children[0]);
 tmpnode->children[1] = AAS_LadderSubdivision_r(tmpnode->children[1]);
 return tmpnode;
}
