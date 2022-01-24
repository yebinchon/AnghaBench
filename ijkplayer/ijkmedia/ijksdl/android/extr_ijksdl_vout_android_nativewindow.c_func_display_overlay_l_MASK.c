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
struct TYPE_11__ {int /*<<< orphan*/  overlay_format; TYPE_1__* opaque; } ;
struct TYPE_10__ {scalar_t__ w; scalar_t__ h; int format; } ;
struct TYPE_9__ {int null_native_window_warned; int /*<<< orphan*/  egl; int /*<<< orphan*/ * native_window; } ;
typedef  TYPE_1__ SDL_Vout_Opaque ;
typedef  TYPE_2__ SDL_VoutOverlay ;
typedef  TYPE_3__ SDL_Vout ;
typedef  int /*<<< orphan*/  ANativeWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
#define  SDL_FCC_I420 134 
#define  SDL_FCC_I444P10LE 133 
#define  SDL_FCC_RV16 132 
#define  SDL_FCC_RV24 131 
#define  SDL_FCC_RV32 130 
#define  SDL_FCC_YV12 129 
#define  SDL_FCC__AMC 128 
 int /*<<< orphan*/  SDL_FCC__GLES2 ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(SDL_Vout *vout, SDL_VoutOverlay *overlay)
{
    SDL_Vout_Opaque *opaque = vout->opaque;
    ANativeWindow *native_window = opaque->native_window;

    if (!native_window) {
        if (!opaque->null_native_window_warned) {
            opaque->null_native_window_warned = 1;
            FUNC1("func_display_overlay_l: NULL native_window");
        }
        return -1;
    } else {
        opaque->null_native_window_warned = 1;
    }

    if (!overlay) {
        FUNC0("func_display_overlay_l: NULL overlay");
        return -1;
    }

    if (overlay->w <= 0 || overlay->h <= 0) {
        FUNC0("func_display_overlay_l: invalid overlay dimensions(%d, %d)", overlay->w, overlay->h);
        return -1;
    }

    switch(overlay->format) {
    case SDL_FCC__AMC: {
        // only ANativeWindow support
        FUNC3(opaque->egl);
        return FUNC5(overlay, NULL, true);
    }
    case SDL_FCC_RV24:
    case SDL_FCC_I420:
    case SDL_FCC_I444P10LE: {
        // only GLES support
        if (opaque->egl)
            return FUNC2(opaque->egl, native_window, overlay);
        break;
    }
    case SDL_FCC_YV12:
    case SDL_FCC_RV16:
    case SDL_FCC_RV32: {
        // both GLES & ANativeWindow support
        if (vout->overlay_format == SDL_FCC__GLES2 && opaque->egl)
            return FUNC2(opaque->egl, native_window, overlay);
        break;
    }
    }

    // fallback to ANativeWindow
    FUNC3(opaque->egl);
    return FUNC4(native_window, overlay); 
}