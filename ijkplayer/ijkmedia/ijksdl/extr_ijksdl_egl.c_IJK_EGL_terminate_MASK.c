#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ display; scalar_t__ surface; scalar_t__ context; TYPE_1__* opaque; } ;
struct TYPE_5__ {int /*<<< orphan*/  renderer; } ;
typedef  TYPE_2__ IJK_EGL ;

/* Variables and functions */
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 scalar_t__ EGL_NO_SURFACE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(IJK_EGL* egl)
{
    if (!FUNC0(egl))
        return;

    if (egl->opaque)
        FUNC1(&egl->opaque->renderer);

    if (egl->display) {
        FUNC4(egl->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
        if (egl->context)
            FUNC2(egl->display, egl->context);
        if (egl->surface)
            FUNC3(egl->display, egl->surface);
        FUNC6(egl->display);
        FUNC5(); // FIXME: call at thread exit
    }

    egl->context = EGL_NO_CONTEXT;
    egl->surface = EGL_NO_SURFACE;
    egl->display = EGL_NO_DISPLAY;
}