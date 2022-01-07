
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* opaque; } ;
struct TYPE_5__ {int acodec; int egl; int * native_window; int overlay_manager; int overlay_pool; } ;
typedef TYPE_1__ SDL_Vout_Opaque ;
typedef TYPE_2__ SDL_Vout ;
typedef int SDL_AMediaCodecBufferProxy ;


 int ANativeWindow_release (int *) ;
 int IJK_EGL_freep (int *) ;
 scalar_t__ ISDL_Array__begin (int *) ;
 int ISDL_Array__clear (int *) ;
 scalar_t__ ISDL_Array__end (int *) ;
 int SDL_AMediaCodecBufferProxy_destroyP (int **) ;
 int SDL_AMediaCodec_decreaseReferenceP (int *) ;
 int SDL_Vout_FreeInternal (TYPE_2__*) ;

__attribute__((used)) static void func_free_l(SDL_Vout *vout)
{
    if (!vout)
        return;

    SDL_Vout_Opaque *opaque = vout->opaque;
    if (opaque) {
        SDL_AMediaCodecBufferProxy **begin = (SDL_AMediaCodecBufferProxy **)ISDL_Array__begin(&opaque->overlay_manager);
        SDL_AMediaCodecBufferProxy **end = (SDL_AMediaCodecBufferProxy **)ISDL_Array__end(&opaque->overlay_manager);
        for (; begin < end; ++begin) {
            SDL_AMediaCodecBufferProxy_destroyP(begin);
        }
        ISDL_Array__clear(&opaque->overlay_pool);
        ISDL_Array__clear(&opaque->overlay_manager);

        if (opaque->native_window) {
            ANativeWindow_release(opaque->native_window);
            opaque->native_window = ((void*)0);
        }

        IJK_EGL_freep(&opaque->egl);

        SDL_AMediaCodec_decreaseReferenceP(&opaque->acodec);
    }

    SDL_Vout_FreeInternal(vout);
}
