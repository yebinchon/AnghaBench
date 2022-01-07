
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCloseDisplay (int ) ;
 int glXDestroyContext (int ,int ) ;
 int glXDestroyPbuffer (int ,int ) ;
 int glXMakeCurrent (int ,int ,int *) ;
 int glx_context ;
 int glx_display ;
 int glx_pbuffer ;

void GLimp_Shutdown(void) {
  glXMakeCurrent(glx_display, 0, ((void*)0));
  glXDestroyPbuffer(glx_display, glx_pbuffer);
  glXDestroyContext(glx_display, glx_context);
  XCloseDisplay(glx_display);
}
