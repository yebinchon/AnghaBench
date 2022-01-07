
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int RETURN_IF_EGL_ERROR (int ) ;
 int ShutDownEGLSubsystem () ;
 int TerminateInitializedEGLDisplay (int ) ;
 int eglDestroyContext (int ,int ) ;
 int eglDestroySurface (int ,int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int egl_context ;
 int egl_display ;
 int egl_surface ;

void GLimp_Shutdown(void) {
  RETURN_IF_EGL_ERROR(eglMakeCurrent(egl_display, EGL_NO_SURFACE,
                                     EGL_NO_SURFACE, EGL_NO_CONTEXT));
  RETURN_IF_EGL_ERROR(eglDestroySurface(egl_display, egl_surface));
  RETURN_IF_EGL_ERROR(eglDestroyContext(egl_display, egl_context));
  RETURN_IF_EGL_ERROR(TerminateInitializedEGLDisplay(egl_display));
  ShutDownEGLSubsystem();
}
