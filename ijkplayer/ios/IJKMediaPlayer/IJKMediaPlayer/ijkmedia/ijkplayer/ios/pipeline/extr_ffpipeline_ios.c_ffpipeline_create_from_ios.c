
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int func_open_audio_output; int func_open_video_decoder; int func_destroy; TYPE_1__* opaque; } ;
struct TYPE_5__ {int * ffp; } ;
typedef TYPE_1__ IJKFF_Pipeline_Opaque ;
typedef TYPE_2__ IJKFF_Pipeline ;
typedef int FFPlayer ;


 TYPE_2__* ffpipeline_alloc (int *,int) ;
 int func_destroy ;
 int func_open_audio_output ;
 int func_open_video_decoder ;
 int g_pipeline_class ;

IJKFF_Pipeline *ffpipeline_create_from_ios(FFPlayer *ffp)
{
    IJKFF_Pipeline *pipeline = ffpipeline_alloc(&g_pipeline_class, sizeof(IJKFF_Pipeline_Opaque));
    if (!pipeline)
        return pipeline;

    IJKFF_Pipeline_Opaque *opaque = pipeline->opaque;
    opaque->ffp = ffp;
    pipeline->func_destroy = func_destroy;
    pipeline->func_open_video_decoder = func_open_video_decoder;
    pipeline->func_open_audio_output = func_open_audio_output;

    return pipeline;
}
