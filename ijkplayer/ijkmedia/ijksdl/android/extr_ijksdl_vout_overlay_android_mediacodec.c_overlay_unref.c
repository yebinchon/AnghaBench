
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* opaque; } ;
struct TYPE_4__ {int buffer_proxy; int vout; } ;
typedef TYPE_1__ SDL_VoutOverlay_Opaque ;
typedef TYPE_2__ SDL_VoutOverlay ;


 int SDL_VoutAndroid_releaseBufferProxyP (int ,int *,int) ;

__attribute__((used)) static void overlay_unref(SDL_VoutOverlay *overlay)
{
    SDL_VoutOverlay_Opaque *opaque = overlay->opaque;

    SDL_VoutAndroid_releaseBufferProxyP(opaque->vout, &opaque->buffer_proxy, 0);
}
