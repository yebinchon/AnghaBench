#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_5__ {int /*<<< orphan*/  integer; } ;
typedef  TYPE_1__ cvar_t ;
struct TYPE_7__ {int /*<<< orphan*/  buffHeight; int /*<<< orphan*/  buffWidth; } ;
struct TYPE_6__ {TYPE_1__* (* Cvar_Get ) (char*,char*,int) ;} ;
typedef  int /*<<< orphan*/  EGLint ;
typedef  int /*<<< orphan*/  EGLConfig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EGL_HEIGHT ; 
 int /*<<< orphan*/  EGL_NONE ; 
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  EGL_OPENGL_API ; 
 int /*<<< orphan*/  EGL_WIDTH ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  egl_context ; 
 scalar_t__ egl_display ; 
 int /*<<< orphan*/  egl_surface ; 
 TYPE_4__ glConfig ; 
 int /*<<< orphan*/  kConfigAttribs ; 
 TYPE_3__ ri ; 
 TYPE_1__* FUNC9 (char*,char*,int) ; 

void FUNC10(qboolean coreContext) {
  FUNC3();

  cvar_t* r_gpu_device_index =
      ri.Cvar_Get("r_gpuDeviceIndex", "0", CVAR_ARCHIVE | CVAR_LATCH);

  egl_display = FUNC1(r_gpu_device_index->integer);
  if (egl_display == EGL_NO_DISPLAY) {
    FUNC4("Failed to create EGL display for device index %d!\n",
              r_gpu_device_index->integer);
    return;
  }

  EGLint num_configs;
  EGLConfig egl_config;
  FUNC0(FUNC6(egl_display, kConfigAttribs, &egl_config, 1,
                                    &num_configs));

  EGLint pbuffer_attribs[] = {
      EGL_WIDTH,  glConfig.buffWidth,   //
      EGL_HEIGHT, glConfig.buffHeight,  //
      EGL_NONE,
  };

  FUNC0(egl_surface = FUNC8(
                        egl_display, egl_config, pbuffer_attribs));

  FUNC0(FUNC5(EGL_OPENGL_API));

  FUNC0(egl_context = FUNC7(egl_display, egl_config,
                                                   EGL_NO_CONTEXT, NULL));

  FUNC2();
}