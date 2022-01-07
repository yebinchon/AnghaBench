
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sys_Error (char*) ;
 int glXMakeCurrent (int ,int ,int ) ;
 int glx_context ;
 int glx_display ;
 int glx_pbuffer ;

void GLimp_MakeCurrent(void) {
  if (!glXMakeCurrent(glx_display, glx_pbuffer, glx_context)) {
    Sys_Error("GLimp_MakeCurrent - Failed!");
  }
}
