
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int w; int h; int is_private; int func_fill_frame; int unref; int unlock; int lock; int (* free_l ) (TYPE_2__*) ;int pixels; int pitches; int format; int * opaque_class; TYPE_1__* opaque; } ;
struct TYPE_6__ {int mutex; int pixels; int pitches; int * buffer_proxy; int * acodec; int * vout; } ;
typedef TYPE_1__ SDL_VoutOverlay_Opaque ;
typedef TYPE_2__ SDL_VoutOverlay ;
typedef int SDL_Vout ;


 int ALOGE (char*) ;
 int SDLTRACE (char*,int,int,int *) ;
 int SDL_CreateMutex () ;
 int SDL_FCC__AMC ;
 TYPE_2__* SDL_VoutOverlay_CreateInternal (int) ;
 int func_fill_frame ;
 int g_vout_overlay_amediacodec_class ;
 int overlay_free_l (TYPE_2__*) ;
 int overlay_lock ;
 int overlay_unlock ;
 int overlay_unref ;

SDL_VoutOverlay *SDL_VoutAMediaCodec_CreateOverlay(int width, int height, SDL_Vout *vout)
{
    SDLTRACE("SDL_VoutAMediaCodec_CreateOverlay(w=%d, h=%d, fmt=_AMC vout=%p)\n",
        width, height, vout);
    SDL_VoutOverlay *overlay = SDL_VoutOverlay_CreateInternal(sizeof(SDL_VoutOverlay_Opaque));
    if (!overlay) {
        ALOGE("overlay allocation failed");
        return ((void*)0);
    }

    SDL_VoutOverlay_Opaque *opaque = overlay->opaque;
    opaque->mutex = SDL_CreateMutex();
    opaque->vout = vout;
    opaque->acodec = ((void*)0);
    opaque->buffer_proxy = ((void*)0);

    overlay->opaque_class = &g_vout_overlay_amediacodec_class;
    overlay->format = SDL_FCC__AMC;
    overlay->pitches = opaque->pitches;
    overlay->pixels = opaque->pixels;
    overlay->w = width;
    overlay->h = height;
    overlay->is_private = 1;

    overlay->free_l = overlay_free_l;
    overlay->lock = overlay_lock;
    overlay->unlock = overlay_unlock;
    overlay->unref = overlay_unref;
    overlay->func_fill_frame = func_fill_frame;

    if (!opaque->mutex) {
        ALOGE("SDL_CreateMutex failed");
        goto fail;
    }

    return overlay;

fail:
    overlay_free_l(overlay);
    return ((void*)0);
}
