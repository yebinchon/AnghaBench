
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** child; } ;
typedef TYPE_1__ IjkAVTreeNode ;


 int free (TYPE_1__*) ;

void ijk_av_tree_destroy(IjkAVTreeNode *t)
{
    if (t) {
        ijk_av_tree_destroy(t->child[0]);
        ijk_av_tree_destroy(t->child[1]);
        free(t);
    }
}
