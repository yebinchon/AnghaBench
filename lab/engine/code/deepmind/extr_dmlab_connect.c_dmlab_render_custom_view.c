
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int (* MakeCurrent ) () ;} ;
struct TYPE_10__ {TYPE_3__* context; } ;
struct TYPE_7__ {int size; int id; } ;
struct TYPE_8__ {TYPE_1__ custom_view; } ;
struct TYPE_9__ {int current_screen_rendered; TYPE_2__ pbos; } ;
typedef TYPE_3__ GameContext ;
typedef TYPE_4__ DeepmindContext ;


 int GL_PIXEL_PACK_BUFFER ;
 int GL_READ_ONLY ;
 int GL_RGB ;
 int GL_STREAM_READ ;
 int GL_UNSIGNED_BYTE ;
 int SCR_RenderCustomView () ;
 TYPE_4__* dmlab_context () ;
 int memcpy (unsigned char*,void const*,int) ;
 int qglBindBuffer (int ,int ) ;
 int qglBufferData (int ,int,int *,int ) ;
 int qglGenBuffers (int,int *) ;
 void* qglMapBuffer (int ,int ) ;
 int qglReadPixels (int ,int ,int,int,int ,int ,int ) ;
 int qglUnmapBuffer (int ) ;
 TYPE_5__ re ;
 int stub1 () ;

__attribute__((used)) static void dmlab_render_custom_view(
    int width, int height, unsigned char* buffer) {
  re.MakeCurrent();
  DeepmindContext* ctx = dmlab_context();
  GameContext* gc = ctx->context;

  SCR_RenderCustomView();

  gc->current_screen_rendered = 0;

  if (!gc->pbos.custom_view.id) {
    qglGenBuffers(1, &gc->pbos.custom_view.id);
  }
  qglBindBuffer(GL_PIXEL_PACK_BUFFER, gc->pbos.custom_view.id);
  int size = width * height * 3;
  if (gc->pbos.custom_view.size < size) {
    gc->pbos.custom_view.size = size;
    qglBufferData(GL_PIXEL_PACK_BUFFER, size, ((void*)0), GL_STREAM_READ);
  }

  qglReadPixels(0, 0, width, height, GL_RGB, GL_UNSIGNED_BYTE, 0);
  const void* pixel_buffer = qglMapBuffer(GL_PIXEL_PACK_BUFFER, GL_READ_ONLY);
  memcpy(buffer, pixel_buffer, size);
  qglUnmapBuffer(GL_PIXEL_PACK_BUFFER);
  qglBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
}
