
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int width; int height; int format; } ;
struct TYPE_10__ {scalar_t__ hal_format; int (* render ) (TYPE_3__*,TYPE_1__*) ;} ;
struct TYPE_9__ {scalar_t__ w; scalar_t__ h; int format; } ;
typedef TYPE_1__ SDL_VoutOverlay ;
typedef TYPE_2__ AndroidHalFourccDescriptor ;
typedef TYPE_3__ ANativeWindow_Buffer ;
typedef int ANativeWindow ;


 int ALOGD (char*,int,int,char*,int,int,int,char*,int) ;
 int ALOGE (char*,...) ;
 int ANativeWindow_getFormat (int *) ;
 int ANativeWindow_getHeight (int *) ;
 int ANativeWindow_getWidth (int *) ;
 int ANativeWindow_lock (int *,TYPE_3__*,int *) ;
 int ANativeWindow_setBuffersGeometry (int *,int,int,scalar_t__) ;
 int ANativeWindow_unlockAndPost (int *) ;
 int IJKALIGN (scalar_t__,int) ;
 TYPE_2__* native_window_get_desc (int) ;
 int stub1 (TYPE_3__*,TYPE_1__*) ;

int SDL_Android_NativeWindow_display_l(ANativeWindow *native_window, SDL_VoutOverlay *overlay)
{
    int retval;

    if (!native_window)
        return -1;

    if (!overlay) {
        ALOGE("SDL_Android_NativeWindow_display_l: NULL overlay");
        return -1;
    }

    if (overlay->w <= 0 || overlay->h <= 0) {
        ALOGE("SDL_Android_NativeWindow_display_l: invalid overlay dimensions(%d, %d)", overlay->w, overlay->h);
        return -1;
    }

    int curr_w = ANativeWindow_getWidth(native_window);
    int curr_h = ANativeWindow_getHeight(native_window);
    int curr_format = ANativeWindow_getFormat(native_window);
    int buff_w = IJKALIGN(overlay->w, 2);
    int buff_h = IJKALIGN(overlay->h, 2);

    AndroidHalFourccDescriptor *overlayDesc = native_window_get_desc(overlay->format);
    if (!overlayDesc) {
        ALOGE("SDL_Android_NativeWindow_display_l: unknown overlay format: %d", overlay->format);
        return -1;
    }

    AndroidHalFourccDescriptor *voutDesc = native_window_get_desc(curr_format);
    if (!voutDesc || voutDesc->hal_format != overlayDesc->hal_format) {
        ALOGD("ANativeWindow_setBuffersGeometry: w=%d, h=%d, f=%.4s(0x%x) => w=%d, h=%d, f=%.4s(0x%x)",
            curr_w, curr_h, (char*) &curr_format, curr_format,
            buff_w, buff_h, (char*) &overlay->format, overlay->format);
        retval = ANativeWindow_setBuffersGeometry(native_window, buff_w, buff_h, overlayDesc->hal_format);
        if (retval < 0) {
            ALOGE("SDL_Android_NativeWindow_display_l: ANativeWindow_setBuffersGeometry: failed %d", retval);
            return retval;
        }

        if (!voutDesc) {
            ALOGE("SDL_Android_NativeWindow_display_l: unknown hal format %d", curr_format);
            return -1;
        }
    }

    ANativeWindow_Buffer out_buffer;
    retval = ANativeWindow_lock(native_window, &out_buffer, ((void*)0));
    if (retval < 0) {
        ALOGE("SDL_Android_NativeWindow_display_l: ANativeWindow_lock: failed %d", retval);
        return retval;
    }

    if (out_buffer.width != buff_w || out_buffer.height != buff_h) {
        ALOGE("unexpected native window buffer (%p)(w:%d, h:%d, fmt:'%.4s'0x%x), expecting (w:%d, h:%d, fmt:'%.4s'0x%x)",
            native_window,
            out_buffer.width, out_buffer.height, (char*)&out_buffer.format, out_buffer.format,
            buff_w, buff_h, (char*)&overlay->format, overlay->format);

        ANativeWindow_unlockAndPost(native_window);
        ANativeWindow_setBuffersGeometry(native_window, buff_w, buff_h, overlayDesc->hal_format);
        return -1;
    }

    int render_ret = voutDesc->render(&out_buffer, overlay);
    if (render_ret < 0) {


    }

    retval = ANativeWindow_unlockAndPost(native_window);
    if (retval < 0) {
        ALOGE("SDL_Android_NativeWindow_display_l: ANativeWindow_unlockAndPost: failed %d", retval);
        return retval;
    }

    return render_ret;
}
