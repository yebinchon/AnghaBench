
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; int id; } ;
struct TYPE_6__ {int size; int id; } ;
struct TYPE_8__ {TYPE_2__ depth; TYPE_1__ rgb; } ;
struct TYPE_9__ {int width; int height; TYPE_3__ pbos; } ;
typedef TYPE_4__ GameContext ;


 scalar_t__ GL_NO_ERROR ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_STREAM_READ ;
 int abort () ;
 int fputs (char*,int ) ;
 int qglBindBuffer (int ,int ) ;
 int qglBufferData (int ,int,int *,int ) ;
 int qglGenBuffers (int,int *) ;
 scalar_t__ qglGetError () ;
 int stderr ;

__attribute__((used)) static void create_update_pbo_or_die(GameContext* gc) {
  if (!gc->pbos.rgb.id) {
    qglGenBuffers(1, &gc->pbos.rgb.id);
  }
  if (!gc->pbos.depth.id) {
    qglGenBuffers(1, &gc->pbos.depth.id);
  }


  if (qglGetError() != GL_NO_ERROR) {
    fputs("GL Error creating PBO buffers.\n", stderr);
    abort();
  }

  int rgb_pbo_size = gc->width * gc->height * 3;
  if (gc->pbos.rgb.size < rgb_pbo_size) {
    qglBindBuffer(GL_PIXEL_PACK_BUFFER, gc->pbos.rgb.id);
    qglBufferData(GL_PIXEL_PACK_BUFFER, rgb_pbo_size, ((void*)0), GL_STREAM_READ);
    if (qglGetError() != GL_NO_ERROR) {
      fputs("Failed to generate PBO data buffer.\n", stderr);
      abort();
    }
    gc->pbos.rgb.size = rgb_pbo_size;
    qglBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
  }

  int depth_pbo_size = gc->width * gc->height;
  if (gc->pbos.depth.size < depth_pbo_size) {
    qglBindBuffer(GL_PIXEL_PACK_BUFFER, gc->pbos.depth.id);
    qglBufferData(GL_PIXEL_PACK_BUFFER, depth_pbo_size, ((void*)0), GL_STREAM_READ);

    if (qglGetError() != GL_NO_ERROR) {
      fputs("Failed to generate PBO data buffer.\n", stderr);
      abort();
    }
    gc->pbos.depth.size = depth_pbo_size;
    qglBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
  }
}
