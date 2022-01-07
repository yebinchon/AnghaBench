
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func_run_sync ) (TYPE_1__*) ;} ;
typedef TYPE_1__ IJKFF_Pipenode ;


 int stub1 (TYPE_1__*) ;

int ffpipenode_run_sync(IJKFF_Pipenode *node)
{
    return node->func_run_sync(node);
}
