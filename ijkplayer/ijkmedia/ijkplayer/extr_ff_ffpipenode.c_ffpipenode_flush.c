
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func_flush ) (TYPE_1__*) ;} ;
typedef TYPE_1__ IJKFF_Pipenode ;


 int stub1 (TYPE_1__*) ;

int ffpipenode_flush(IJKFF_Pipenode *node)
{
    if (!node || !node->func_flush)
        return 0;

    return node->func_flush(node);
}
