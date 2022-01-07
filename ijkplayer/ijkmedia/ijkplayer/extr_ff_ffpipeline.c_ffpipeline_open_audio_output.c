
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* func_open_audio_output ) (TYPE_1__*,int *) ;} ;
typedef int SDL_Aout ;
typedef TYPE_1__ IJKFF_Pipeline ;
typedef int FFPlayer ;


 int * stub1 (TYPE_1__*,int *) ;

SDL_Aout *ffpipeline_open_audio_output(IJKFF_Pipeline *pipeline, FFPlayer *ffp)
{
    return pipeline->func_open_audio_output(pipeline, ffp);
}
