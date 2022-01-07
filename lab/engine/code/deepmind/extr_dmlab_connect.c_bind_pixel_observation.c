
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int id; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_9__ {TYPE_2__ depth; TYPE_1__ rgb; } ;
struct TYPE_10__ {void* temp_buffer; int width; int height; TYPE_3__ pbos; } ;
typedef int PixelBufferTypeEnum ;
typedef TYPE_4__ GameContext ;


 int GL_BGR_EXT ;
 int GL_DEPTH_COMPONENT ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_READ_ONLY ;
 int GL_RGB ;
 int GL_UNSIGNED_BYTE ;



 int qglBindBuffer (int ,int ) ;
 void* qglMapBuffer (int ,int ) ;
 int qglReadPixels (int ,int ,int,int,int ,int ,void*) ;
 void* realloc_or_die (void*,int) ;
 scalar_t__ use_pbo_rendering (TYPE_4__*) ;

__attribute__((used)) static void* bind_pixel_observation(GameContext* gc, PixelBufferTypeEnum type) {
  if (use_pbo_rendering(gc)) {
    switch (type) {
      case 128:
      case 130:
        qglBindBuffer(GL_PIXEL_PACK_BUFFER, gc->pbos.rgb.id);
        break;
      case 129:
        qglBindBuffer(GL_PIXEL_PACK_BUFFER, gc->pbos.depth.id);
        break;
    }
    void* pixel_buffer = qglMapBuffer(GL_PIXEL_PACK_BUFFER, GL_READ_ONLY);

    return pixel_buffer;
  } else {
    gc->temp_buffer =
        realloc_or_die(gc->temp_buffer, gc->width * gc->height * 3);
    switch (type) {
      case 128:
        qglReadPixels(0, 0, gc->width, gc->height, GL_RGB, GL_UNSIGNED_BYTE,
                      gc->temp_buffer);
        break;
      case 130:
        qglReadPixels(0, 0, gc->width, gc->height, GL_BGR_EXT, GL_UNSIGNED_BYTE,
                      gc->temp_buffer);
        break;
      case 129:
        qglReadPixels(0, 0, gc->width, gc->height, GL_DEPTH_COMPONENT,
                      GL_UNSIGNED_BYTE, gc->temp_buffer);
        break;
    }

    return gc->temp_buffer;
  }
}
