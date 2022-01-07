
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jobject ;
struct TYPE_5__ {TYPE_1__* ffplayer; } ;
struct TYPE_4__ {int pipeline; int vout; } ;
typedef int JNIEnv ;
typedef TYPE_2__ IjkMediaPlayer ;


 int SDL_VoutAndroid_SetAndroidSurface (int *,int ,int ) ;
 int ffpipeline_set_surface (int *,int ,int ) ;

void ijkmp_android_set_surface_l(JNIEnv *env, IjkMediaPlayer *mp, jobject android_surface)
{
    if (!mp || !mp->ffplayer || !mp->ffplayer->vout)
        return;

    SDL_VoutAndroid_SetAndroidSurface(env, mp->ffplayer->vout, android_surface);
    ffpipeline_set_surface(env, mp->ffplayer->pipeline, android_surface);
}
