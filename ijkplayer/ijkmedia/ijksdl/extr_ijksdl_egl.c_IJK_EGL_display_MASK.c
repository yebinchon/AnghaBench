#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  display; int /*<<< orphan*/ * opaque; } ;
typedef  int /*<<< orphan*/  SDL_VoutOverlay ;
typedef  int /*<<< orphan*/  IJK_EGL_Opaque ;
typedef  TYPE_1__ IJK_EGL ;
typedef  int /*<<< orphan*/  EGLNativeWindowType ;
typedef  int /*<<< orphan*/  EGLBoolean ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_FALSE ; 
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

EGLBoolean FUNC4(IJK_EGL* egl, EGLNativeWindowType window, SDL_VoutOverlay *overlay)
{
    EGLBoolean ret = EGL_FALSE;
    if (!egl)
        return EGL_FALSE;

    IJK_EGL_Opaque *opaque = egl->opaque;
    if (!opaque)
        return EGL_FALSE;

    if (!FUNC1(egl, window))
        return EGL_FALSE;

    ret = FUNC0(egl, window, overlay);
    FUNC2(egl->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
    FUNC3(); // FIXME: call at thread exit
    return ret;
}