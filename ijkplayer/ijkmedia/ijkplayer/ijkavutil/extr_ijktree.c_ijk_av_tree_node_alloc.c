
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IjkAVTreeNode {int dummy; } ;


 struct IjkAVTreeNode* calloc (int,int) ;

struct IjkAVTreeNode *ijk_av_tree_node_alloc(void)
{
    return calloc(1, sizeof(struct IjkAVTreeNode));
}
