
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ opensles; } ;
struct TYPE_7__ {TYPE_1__* opaque; } ;
struct TYPE_6__ {int right_volume; int left_volume; } ;
typedef int SDL_Aout ;
typedef TYPE_2__ IJKFF_Pipeline ;
typedef TYPE_3__ FFPlayer ;


 int * SDL_AoutAndroid_CreateForAudioTrack () ;
 int * SDL_AoutAndroid_CreateForOpenSLES () ;
 int SDL_AoutSetStereoVolume (int *,int ,int ) ;

__attribute__((used)) static SDL_Aout *func_open_audio_output(IJKFF_Pipeline *pipeline, FFPlayer *ffp)
{
    SDL_Aout *aout = ((void*)0);
    if (ffp->opensles) {
        aout = SDL_AoutAndroid_CreateForOpenSLES();
    } else {
        aout = SDL_AoutAndroid_CreateForAudioTrack();
    }
    if (aout)
        SDL_AoutSetStereoVolume(aout, pipeline->opaque->left_volume, pipeline->opaque->right_volume);
    return aout;
}
