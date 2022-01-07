
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* opaque; int (* func_destroy ) (TYPE_1__*) ;} ;
typedef TYPE_1__ IJKFF_Pipeline ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_1__*) ;

void ffpipeline_free(IJKFF_Pipeline *pipeline)
{
    if (!pipeline)
        return;

    if (pipeline->func_destroy) {
        pipeline->func_destroy(pipeline);
    }

    free(pipeline->opaque);
    memset(pipeline, 0, sizeof(IJKFF_Pipeline));
    free(pipeline);
}
