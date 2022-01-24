#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int width; int height; int /*<<< orphan*/  format; } ;
struct TYPE_10__ {scalar_t__ hal_format; int (* render ) (TYPE_3__*,TYPE_1__*) ;} ;
struct TYPE_9__ {scalar_t__ w; scalar_t__ h; int format; } ;
typedef  TYPE_1__ SDL_VoutOverlay ;
typedef  TYPE_2__ AndroidHalFourccDescriptor ;
typedef  TYPE_3__ ANativeWindow_Buffer ;
typedef  int /*<<< orphan*/  ANativeWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,char*,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__,int) ; 
 TYPE_2__* FUNC9 (int) ; 
 int FUNC10 (TYPE_3__*,TYPE_1__*) ; 

int FUNC11(ANativeWindow *native_window, SDL_VoutOverlay *overlay)
{
    int retval;

    if (!native_window)
        return -1;

    if (!overlay) {
        FUNC1("SDL_Android_NativeWindow_display_l: NULL overlay");
        return -1;
    }

    if (overlay->w <= 0 || overlay->h <= 0) {
        FUNC1("SDL_Android_NativeWindow_display_l: invalid overlay dimensions(%d, %d)", overlay->w, overlay->h);
        return -1;
    }

    int curr_w = FUNC4(native_window);
    int curr_h = FUNC3(native_window);
    int curr_format = FUNC2(native_window);
    int buff_w = FUNC8(overlay->w, 2);
    int buff_h = FUNC8(overlay->h, 2);

    AndroidHalFourccDescriptor *overlayDesc = FUNC9(overlay->format);
    if (!overlayDesc) {
        FUNC1("SDL_Android_NativeWindow_display_l: unknown overlay format: %d", overlay->format);
        return -1;
    }

    AndroidHalFourccDescriptor *voutDesc = FUNC9(curr_format);
    if (!voutDesc || voutDesc->hal_format != overlayDesc->hal_format) {
        FUNC0("ANativeWindow_setBuffersGeometry: w=%d, h=%d, f=%.4s(0x%x) => w=%d, h=%d, f=%.4s(0x%x)",
            curr_w, curr_h, (char*) &curr_format, curr_format,
            buff_w, buff_h, (char*) &overlay->format, overlay->format);
        retval = FUNC6(native_window, buff_w, buff_h, overlayDesc->hal_format);
        if (retval < 0) {
            FUNC1("SDL_Android_NativeWindow_display_l: ANativeWindow_setBuffersGeometry: failed %d", retval);
            return retval;
        }

        if (!voutDesc) {
            FUNC1("SDL_Android_NativeWindow_display_l: unknown hal format %d", curr_format);
            return -1;
        }
    }

    ANativeWindow_Buffer out_buffer;
    retval = FUNC5(native_window, &out_buffer, NULL);
    if (retval < 0) {
        FUNC1("SDL_Android_NativeWindow_display_l: ANativeWindow_lock: failed %d", retval);
        return retval;
    }

    if (out_buffer.width != buff_w || out_buffer.height != buff_h) {
        FUNC1("unexpected native window buffer (%p)(w:%d, h:%d, fmt:'%.4s'0x%x), expecting (w:%d, h:%d, fmt:'%.4s'0x%x)",
            native_window,
            out_buffer.width, out_buffer.height, (char*)&out_buffer.format, out_buffer.format,
            buff_w, buff_h, (char*)&overlay->format, overlay->format);
        // TODO: 8 set all black
        FUNC7(native_window);
        FUNC6(native_window, buff_w, buff_h, overlayDesc->hal_format);
        return -1;
    }

    int render_ret = voutDesc->render(&out_buffer, overlay);
    if (render_ret < 0) {
        // TODO: 8 set all black
        // return after unlock image;
    }

    retval = FUNC7(native_window);
    if (retval < 0) {
        FUNC1("SDL_Android_NativeWindow_display_l: ANativeWindow_unlockAndPost: failed %d", retval);
        return retval;
    }

    return render_ret;
}