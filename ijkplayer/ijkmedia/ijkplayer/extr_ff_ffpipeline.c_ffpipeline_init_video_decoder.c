
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* func_init_video_decoder ) (TYPE_1__*,int *) ;} ;
typedef int IJKFF_Pipenode ;
typedef TYPE_1__ IJKFF_Pipeline ;
typedef int FFPlayer ;


 int * stub1 (TYPE_1__*,int *) ;

IJKFF_Pipenode* ffpipeline_init_video_decoder(IJKFF_Pipeline *pipeline, FFPlayer *ffp)
{
    return pipeline->func_init_video_decoder(pipeline, ffp);
}
