
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* context; } ;
struct TYPE_4__ {int width; int alt_camera_width; int height; int alt_camera_height; } ;
typedef TYPE_1__ GameContext ;
typedef TYPE_2__ DeepmindContext ;


 TYPE_2__* dmlab_context () ;

__attribute__((used)) static void screen_shape(int* width, int* height, int* buff_width,
                         int* buff_height) {
  DeepmindContext* ctx = dmlab_context();
  GameContext* gc = ctx->context;
  *buff_width =
      gc->width >= gc->alt_camera_width ? gc->width : gc->alt_camera_width;
  *buff_height =
      gc->height >= gc->alt_camera_height ? gc->height : gc->alt_camera_height;
  *width = gc->width;
  *height = gc->height;
}
