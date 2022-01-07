
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* opaque; } ;
struct TYPE_4__ {int * jsurface; int codecpar; int * bsfc; int orig_extradata; int output_aformat; int input_aformat; int acodec; int acodec_first_dequeue_output_mutex; int acodec_first_dequeue_output_cond; int acodec_mutex; int acodec_cond; int any_input_mutex; int any_input_cond; } ;
typedef int JNIEnv ;
typedef TYPE_1__ IJKFF_Pipenode_Opaque ;
typedef TYPE_2__ IJKFF_Pipenode ;


 scalar_t__ JNI_OK ;
 int SDL_AMediaCodec_decreaseReferenceP (int *) ;
 int SDL_AMediaFormat_deleteP (int *) ;
 int SDL_DestroyCondP (int *) ;
 int SDL_DestroyMutexP (int *) ;
 int SDL_JNI_DeleteGlobalRefP (int *,int **) ;
 scalar_t__ SDL_JNI_SetupThreadEnv (int **) ;
 int av_bitstream_filter_close (int *) ;
 int av_freep (int *) ;
 int avcodec_parameters_free (int *) ;

__attribute__((used)) static void func_destroy(IJKFF_Pipenode *node)
{
    if (!node || !node->opaque)
        return;

    IJKFF_Pipenode_Opaque *opaque = node->opaque;

    SDL_DestroyCondP(&opaque->any_input_cond);
    SDL_DestroyMutexP(&opaque->any_input_mutex);
    SDL_DestroyCondP(&opaque->acodec_cond);
    SDL_DestroyMutexP(&opaque->acodec_mutex);
    SDL_DestroyCondP(&opaque->acodec_first_dequeue_output_cond);
    SDL_DestroyMutexP(&opaque->acodec_first_dequeue_output_mutex);

    SDL_AMediaCodec_decreaseReferenceP(&opaque->acodec);
    SDL_AMediaFormat_deleteP(&opaque->input_aformat);
    SDL_AMediaFormat_deleteP(&opaque->output_aformat);
    avcodec_parameters_free(&opaque->codecpar);

    JNIEnv *env = ((void*)0);
    if (JNI_OK == SDL_JNI_SetupThreadEnv(&env)) {
        if (opaque->jsurface != ((void*)0)) {
            SDL_JNI_DeleteGlobalRefP(env, &opaque->jsurface);
        }
    }
}
