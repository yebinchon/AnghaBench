
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int id; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_10__ {TYPE_2__ depth; TYPE_1__ rgb; } ;
struct TYPE_11__ {int height; int width; TYPE_3__ pbos; } ;
typedef int PixelBufferTypeEnum ;
typedef TYPE_4__ GameContext ;


 int GL_BGR_EXT ;
 int GL_DEPTH_COMPONENT ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_RGB ;
 int GL_UNSIGNED_BYTE ;
 int create_update_pbo_or_die (TYPE_4__*) ;



 int qglBindBuffer (int ,int ) ;
 int qglReadPixels (int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ use_pbo_rendering (TYPE_4__*) ;

__attribute__((used)) static void request_pixel_observations(GameContext* gc,
                                       PixelBufferTypeEnum type) {
  if (use_pbo_rendering(gc)) {
    create_update_pbo_or_die(gc);
    switch (type) {
      case 128:
        qglBindBuffer(GL_PIXEL_PACK_BUFFER, gc->pbos.rgb.id);
        qglReadPixels(0, 0, gc->width, gc->height, GL_RGB, GL_UNSIGNED_BYTE, 0);
        break;
      case 130:
        qglBindBuffer(GL_PIXEL_PACK_BUFFER, gc->pbos.rgb.id);
        qglReadPixels(0, 0, gc->width, gc->height, GL_BGR_EXT, GL_UNSIGNED_BYTE,
                      0);
        break;
      case 129:
        qglBindBuffer(GL_PIXEL_PACK_BUFFER, gc->pbos.depth.id);
        qglReadPixels(0, 0, gc->width, gc->height, GL_DEPTH_COMPONENT,
                      GL_UNSIGNED_BYTE, 0);
        break;
    }
    qglBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
  }
}
