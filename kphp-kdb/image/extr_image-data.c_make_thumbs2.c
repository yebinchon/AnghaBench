
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct thumb2 {int computed; int filename; int quality; } ;
struct forth_stack {int dummy; } ;
struct TYPE_16__ {int columns; int rows; } ;
struct TYPE_15__ {int height; int width; } ;
typedef TYPE_1__ RectangleInfo ;
typedef TYPE_2__ Image ;
typedef int FilterTypes ;


 int DestroyImage (TYPE_2__*) ;
 void* FORTH_PASS ;
 TYPE_2__* ReferenceImage (TYPE_2__*) ;
 int THUMB2_CROP_MASK ;
 int THUMB2_RESIZE_MASK ;
 void* failf (struct forth_stack*,char*,int ) ;
 int get_thumb2_transforms (int const,int const,struct thumb2*,TYPE_1__*,TYPE_1__*) ;
 TYPE_2__* gm_crop_image (struct forth_stack*,TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* gm_resize_image (struct forth_stack*,TYPE_2__*,int ,int ,int ,int const) ;
 scalar_t__ gm_write_image (struct forth_stack*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void *make_thumbs2 (Image *r, struct thumb2 *u, struct forth_stack *st, const FilterTypes resize_filter, const int quality) {
  const int width = r->columns, height = r->rows;
  RectangleInfo resize_rect, crop_rect;
  int res = get_thumb2_transforms (width, height, u, &resize_rect, &crop_rect);
  Image *w = ReferenceImage (r);

  if (res & THUMB2_RESIZE_MASK) {
    Image *v = gm_resize_image (st, w, resize_rect.width, resize_rect.height, 0, resize_filter);
    if (v == ((void*)0)) {
      DestroyImage (w);
      return failf (st, "GENERATE_THUMBS2: gm_resize_image fail. %s", u->filename);
    }
    DestroyImage (w);
    w = v;
  }

  if (res & THUMB2_CROP_MASK) {
    Image *v = gm_crop_image (st, w, &crop_rect);
    if (v == ((void*)0)) {
      DestroyImage (w);
      return failf (st, "GENERATE_THUMBS2: gm_crop_image fail. %s", u->filename);
    }
    DestroyImage (w);
    w = v;
  }

  if (gm_write_image (st, w, u->filename, u->quality) < 0) {
    DestroyImage (w);
    return failf (st, "GENERATE_THUMBS2: write_image fail. %s", u->filename);
  }

  DestroyImage (w);
  u->computed = 1;
  return FORTH_PASS;
}
