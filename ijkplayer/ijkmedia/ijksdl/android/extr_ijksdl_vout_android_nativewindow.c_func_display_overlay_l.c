
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int overlay_format; TYPE_1__* opaque; } ;
struct TYPE_10__ {scalar_t__ w; scalar_t__ h; int format; } ;
struct TYPE_9__ {int null_native_window_warned; int egl; int * native_window; } ;
typedef TYPE_1__ SDL_Vout_Opaque ;
typedef TYPE_2__ SDL_VoutOverlay ;
typedef TYPE_3__ SDL_Vout ;
typedef int ANativeWindow ;


 int ALOGE (char*,...) ;
 int ALOGW (char*) ;
 int IJK_EGL_display (int ,int *,TYPE_2__*) ;
 int IJK_EGL_terminate (int ) ;
 int SDL_Android_NativeWindow_display_l (int *,TYPE_2__*) ;







 int SDL_FCC__GLES2 ;
 int SDL_VoutOverlayAMediaCodec_releaseFrame_l (TYPE_2__*,int *,int) ;

__attribute__((used)) static int func_display_overlay_l(SDL_Vout *vout, SDL_VoutOverlay *overlay)
{
    SDL_Vout_Opaque *opaque = vout->opaque;
    ANativeWindow *native_window = opaque->native_window;

    if (!native_window) {
        if (!opaque->null_native_window_warned) {
            opaque->null_native_window_warned = 1;
            ALOGW("func_display_overlay_l: NULL native_window");
        }
        return -1;
    } else {
        opaque->null_native_window_warned = 1;
    }

    if (!overlay) {
        ALOGE("func_display_overlay_l: NULL overlay");
        return -1;
    }

    if (overlay->w <= 0 || overlay->h <= 0) {
        ALOGE("func_display_overlay_l: invalid overlay dimensions(%d, %d)", overlay->w, overlay->h);
        return -1;
    }

    switch(overlay->format) {
    case 128: {

        IJK_EGL_terminate(opaque->egl);
        return SDL_VoutOverlayAMediaCodec_releaseFrame_l(overlay, ((void*)0), 1);
    }
    case 131:
    case 134:
    case 133: {

        if (opaque->egl)
            return IJK_EGL_display(opaque->egl, native_window, overlay);
        break;
    }
    case 129:
    case 132:
    case 130: {

        if (vout->overlay_format == SDL_FCC__GLES2 && opaque->egl)
            return IJK_EGL_display(opaque->egl, native_window, overlay);
        break;
    }
    }


    IJK_EGL_terminate(opaque->egl);
    return SDL_Android_NativeWindow_display_l(native_window, overlay);
}
