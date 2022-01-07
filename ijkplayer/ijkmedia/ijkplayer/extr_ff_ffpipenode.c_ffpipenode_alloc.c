
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* opaque; int * mutex; } ;
typedef TYPE_1__ IJKFF_Pipenode ;


 int * SDL_CreateMutex () ;
 TYPE_1__* calloc (int,size_t) ;
 int free (TYPE_1__*) ;

IJKFF_Pipenode *ffpipenode_alloc(size_t opaque_size)
{
    IJKFF_Pipenode *node = (IJKFF_Pipenode*) calloc(1, sizeof(IJKFF_Pipenode));
    if (!node)
        return ((void*)0);

    node->opaque = calloc(1, opaque_size);
    if (!node->opaque) {
        free(node);
        return ((void*)0);
    }

    node->mutex = SDL_CreateMutex();
    if (node->mutex == ((void*)0)) {
        free(node->opaque);
        free(node);
        return ((void*)0);
    }

    return node;
}
