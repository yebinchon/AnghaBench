
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct forth_stack {int thread_id; } ;
struct TYPE_10__ {int columns; int rows; scalar_t__ colorspace; scalar_t__ matte; } ;
typedef TYPE_1__ Image ;
typedef int FilterTypes ;


 int DestroyImage (TYPE_1__*) ;
 void* FORTH_FAIL ;
 void* FORTH_PASS ;
 scalar_t__ RGBColorspace ;
 TYPE_1__* gm_replace_transparent_color_by_white (struct forth_stack*,TYPE_1__*) ;
 TYPE_1__* gm_resize_image (struct forth_stack*,TYPE_1__*,int,int,int,int ) ;
 TYPE_1__* gm_rotate_image (struct forth_stack*,TYPE_1__*,int) ;
 int vkprintf (int,char*,int ) ;

__attribute__((used)) static void *generate_thumbs_matte_resize_rotate (struct forth_stack *st, Image **I, int angle, int *width, int *height, int max_width, int max_height, FilterTypes resize_filter, int *trans_flags) {
  if (trans_flags) {
    *trans_flags = 0;
  }
  Image *r = *I, *w;
  *width = r->columns;
  *height = r->rows;

  if ((angle % 2) != 0) {
    int tmp = *width; *width = *height; *height = tmp;
  }


  if (*width > max_width || *height > max_height) {
    if (trans_flags) {
      (*trans_flags) |= 1;
    }
    w = gm_resize_image (st, r, max_width, max_height, 1, resize_filter);
    if (w == ((void*)0)) {
      DestroyImage (r);
      return FORTH_FAIL;
    }
    DestroyImage (r);
    r = w;
  }

  vkprintf (3, "[%d] after gm_resize_image\n", st->thread_id);
  angle %= 4;
  if (angle < 0) {
    angle += 4;
  }
  if (angle) {
    if (trans_flags) {
      (*trans_flags) |= 2;
    }
    w = gm_rotate_image (st, r, 90 * angle);
    if (w == ((void*)0)) {
      DestroyImage (r);
      return FORTH_FAIL;
    }
    DestroyImage (r);
    r = w;
  }

  vkprintf (3, "[%d] after gm_rotate_image\n", st->thread_id);

  if (r->matte || r->colorspace != RGBColorspace) {
    if (trans_flags) {
      (*trans_flags) |= 4;
    }
    w = gm_replace_transparent_color_by_white (st, r);
    if (w == ((void*)0)) {
      DestroyImage (r);
      return FORTH_FAIL;
    }
    DestroyImage (r);
    r = w;
  }

  *width = r->columns;
  *height = r->rows;
  *I = r;
  return FORTH_PASS;
}
