#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ opaque; int /*<<< orphan*/ * opaque_class; } ;
typedef  int /*<<< orphan*/  IJK_EGL_Opaque ;
typedef  TYPE_1__ IJK_EGL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  g_class ; 
 scalar_t__ FUNC1 (int) ; 

IJK_EGL *FUNC2()
{
    IJK_EGL *egl = (IJK_EGL*) FUNC1(sizeof(IJK_EGL));
    if (!egl)
        return NULL;

    egl->opaque_class = &g_class;
    egl->opaque = FUNC1(sizeof(IJK_EGL_Opaque));
    if (!egl->opaque) {
        FUNC0(egl);
        return NULL;
    }

    return egl;
}