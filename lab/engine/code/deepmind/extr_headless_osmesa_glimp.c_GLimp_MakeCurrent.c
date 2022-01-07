
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffHeight; int buffWidth; } ;


 int GL_UNSIGNED_BYTE ;
 int OSMesaMakeCurrent (int ,int ,int ,int ,int ) ;
 int Sys_Error (char*) ;
 TYPE_1__ glConfig ;
 int osmesa_ctx ;
 int osmesa_frame_buffer ;

void GLimp_MakeCurrent(void) {
  if (!OSMesaMakeCurrent(osmesa_ctx, osmesa_frame_buffer, GL_UNSIGNED_BYTE,
                         glConfig.buffWidth, glConfig.buffHeight)) {
    Sys_Error("GLimp_MakeCurrent - Failed!");
  }
}
