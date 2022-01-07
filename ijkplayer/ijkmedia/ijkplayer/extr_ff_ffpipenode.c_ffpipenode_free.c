
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* opaque; int mutex; int (* func_destroy ) (TYPE_1__*) ;} ;
typedef TYPE_1__ IJKFF_Pipenode ;


 int SDL_DestroyMutexP (int *) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_1__*) ;

void ffpipenode_free(IJKFF_Pipenode *node)
{
    if (!node)
        return;

    if (node->func_destroy) {
        node->func_destroy(node);
    }

    SDL_DestroyMutexP(&node->mutex);

    free(node->opaque);
    memset(node, 0, sizeof(IJKFF_Pipenode));
    free(node);
}
