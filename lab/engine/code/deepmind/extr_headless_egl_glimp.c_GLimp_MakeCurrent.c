
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_EGL_SUCCESS (int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int egl_context ;
 int egl_display ;
 int egl_surface ;

void GLimp_MakeCurrent(void) {
  CHECK_EGL_SUCCESS(eglMakeCurrent(egl_display, egl_surface, egl_surface,
                                   egl_context));
}
