
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {int integer; } ;
typedef TYPE_1__ cvar_t ;
struct TYPE_7__ {int buffHeight; int buffWidth; } ;
struct TYPE_6__ {TYPE_1__* (* Cvar_Get ) (char*,char*,int) ;} ;
typedef int EGLint ;
typedef int EGLConfig ;


 int CHECK_EGL_SUCCESS (int ) ;
 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 scalar_t__ CreateInitializedEGLDisplayAtIndex (int ) ;
 int EGL_HEIGHT ;
 int EGL_NONE ;
 int EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 int EGL_OPENGL_API ;
 int EGL_WIDTH ;
 int GLimp_CommonPostInit () ;
 int GLimp_CommonPreInit () ;
 int Sys_Error (char*,int ) ;
 int eglBindAPI (int ) ;
 int eglChooseConfig (scalar_t__,int ,int *,int,int *) ;
 int eglCreateContext (scalar_t__,int ,int ,int *) ;
 int eglCreatePbufferSurface (scalar_t__,int ,int *) ;
 int egl_context ;
 scalar_t__ egl_display ;
 int egl_surface ;
 TYPE_4__ glConfig ;
 int kConfigAttribs ;
 TYPE_3__ ri ;
 TYPE_1__* stub1 (char*,char*,int) ;

void GLimp_Init(qboolean coreContext) {
  GLimp_CommonPreInit();

  cvar_t* r_gpu_device_index =
      ri.Cvar_Get("r_gpuDeviceIndex", "0", CVAR_ARCHIVE | CVAR_LATCH);

  egl_display = CreateInitializedEGLDisplayAtIndex(r_gpu_device_index->integer);
  if (egl_display == EGL_NO_DISPLAY) {
    Sys_Error("Failed to create EGL display for device index %d!\n",
              r_gpu_device_index->integer);
    return;
  }

  EGLint num_configs;
  EGLConfig egl_config;
  CHECK_EGL_SUCCESS(eglChooseConfig(egl_display, kConfigAttribs, &egl_config, 1,
                                    &num_configs));

  EGLint pbuffer_attribs[] = {
      EGL_WIDTH, glConfig.buffWidth,
      EGL_HEIGHT, glConfig.buffHeight,
      EGL_NONE,
  };

  CHECK_EGL_SUCCESS(egl_surface = eglCreatePbufferSurface(
                        egl_display, egl_config, pbuffer_attribs));

  CHECK_EGL_SUCCESS(eglBindAPI(EGL_OPENGL_API));

  CHECK_EGL_SUCCESS(egl_context = eglCreateContext(egl_display, egl_config,
                                                   EGL_NO_CONTEXT, ((void*)0)));

  GLimp_CommonPostInit();
}
