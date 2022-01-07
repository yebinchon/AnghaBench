
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int func_config_video_decoder; int func_init_video_decoder; int func_open_audio_output; int func_open_video_decoder; int func_destroy; TYPE_1__* opaque; } ;
struct TYPE_6__ {float left_volume; float right_volume; int surface_mutex; int * ffp; } ;
typedef TYPE_1__ IJKFF_Pipeline_Opaque ;
typedef TYPE_2__ IJKFF_Pipeline ;
typedef int FFPlayer ;


 int ALOGD (char*) ;
 int ALOGE (char*) ;
 int SDL_CreateMutex () ;
 TYPE_2__* ffpipeline_alloc (int *,int) ;
 int ffpipeline_free_p (TYPE_2__**) ;
 int func_config_video_decoder ;
 int func_destroy ;
 int func_init_video_decoder ;
 int func_open_audio_output ;
 int func_open_video_decoder ;
 int g_pipeline_class ;

IJKFF_Pipeline *ffpipeline_create_from_android(FFPlayer *ffp)
{
    ALOGD("ffpipeline_create_from_android()\n");
    IJKFF_Pipeline *pipeline = ffpipeline_alloc(&g_pipeline_class, sizeof(IJKFF_Pipeline_Opaque));
    if (!pipeline)
        return pipeline;

    IJKFF_Pipeline_Opaque *opaque = pipeline->opaque;
    opaque->ffp = ffp;
    opaque->surface_mutex = SDL_CreateMutex();
    opaque->left_volume = 1.0f;
    opaque->right_volume = 1.0f;
    if (!opaque->surface_mutex) {
        ALOGE("ffpipeline-android:create SDL_CreateMutex failed\n");
        goto fail;
    }

    pipeline->func_destroy = func_destroy;
    pipeline->func_open_video_decoder = func_open_video_decoder;
    pipeline->func_open_audio_output = func_open_audio_output;
    pipeline->func_init_video_decoder = func_init_video_decoder;
    pipeline->func_config_video_decoder = func_config_video_decoder;

    return pipeline;
fail:
    ffpipeline_free_p(&pipeline);
    return ((void*)0);
}
