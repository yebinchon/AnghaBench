
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ opaque; int * opaque_class; } ;
typedef int SDL_Class ;
typedef TYPE_1__ IJKFF_Pipeline ;


 scalar_t__ calloc (int,size_t) ;
 int free (TYPE_1__*) ;

IJKFF_Pipeline *ffpipeline_alloc(SDL_Class *opaque_class, size_t opaque_size)
{
    IJKFF_Pipeline *pipeline = (IJKFF_Pipeline*) calloc(1, sizeof(IJKFF_Pipeline));
    if (!pipeline)
        return ((void*)0);

    pipeline->opaque_class = opaque_class;
    pipeline->opaque = calloc(1, opaque_size);
    if (!pipeline->opaque) {
        free(pipeline);
        return ((void*)0);
    }

    return pipeline;
}
