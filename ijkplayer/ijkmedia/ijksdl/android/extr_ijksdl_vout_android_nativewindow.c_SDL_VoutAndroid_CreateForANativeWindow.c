
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int display_overlay; int (* free_l ) (TYPE_2__*) ;int create_overlay; int * opaque_class; TYPE_1__* opaque; } ;
struct TYPE_6__ {int egl; int overlay_pool; int overlay_manager; int * native_window; } ;
typedef TYPE_1__ SDL_Vout_Opaque ;
typedef TYPE_2__ SDL_Vout ;


 int IJK_EGL_create () ;
 scalar_t__ ISDL_Array__init (int *,int) ;
 TYPE_2__* SDL_Vout_CreateInternal (int) ;
 int func_create_overlay ;
 int func_display_overlay ;
 int func_free_l (TYPE_2__*) ;
 int g_nativewindow_class ;

SDL_Vout *SDL_VoutAndroid_CreateForANativeWindow()
{
    SDL_Vout *vout = SDL_Vout_CreateInternal(sizeof(SDL_Vout_Opaque));
    if (!vout)
        return ((void*)0);

    SDL_Vout_Opaque *opaque = vout->opaque;
    opaque->native_window = ((void*)0);
    if (ISDL_Array__init(&opaque->overlay_manager, 32))
        goto fail;
    if (ISDL_Array__init(&opaque->overlay_pool, 32))
        goto fail;

    opaque->egl = IJK_EGL_create();
    if (!opaque->egl)
        goto fail;

    vout->opaque_class = &g_nativewindow_class;
    vout->create_overlay = func_create_overlay;
    vout->free_l = func_free_l;
    vout->display_overlay = func_display_overlay;

    return vout;
fail:
    func_free_l(vout);
    return ((void*)0);
}
