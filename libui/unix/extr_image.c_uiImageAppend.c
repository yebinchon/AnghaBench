
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int images; } ;
typedef TYPE_1__ uiImage ;
typedef int cairo_surface_t ;


 int CAIRO_FORMAT_ARGB32 ;
 scalar_t__ CAIRO_STATUS_SUCCESS ;
 int * cairo_image_surface_create (int ,int,int) ;
 scalar_t__ cairo_image_surface_get_data (int *) ;
 int cairo_image_surface_get_stride (int *) ;
 int cairo_surface_flush (int *) ;
 int cairo_surface_mark_dirty (int *) ;
 scalar_t__ cairo_surface_status (int *) ;
 int g_ptr_array_add (int ,int *) ;

void uiImageAppend(uiImage *i, void *pixels, int pixelWidth, int pixelHeight, int byteStride)
{
 cairo_surface_t *cs;
 uint8_t *data, *pix;
 int realStride;
 int x, y;


 cs = cairo_image_surface_create(CAIRO_FORMAT_ARGB32,
  pixelWidth, pixelHeight);
 if (cairo_surface_status(cs) != CAIRO_STATUS_SUCCESS)
            ;
 cairo_surface_flush(cs);

 pix = (uint8_t *) pixels;
 data = (uint8_t *) cairo_image_surface_get_data(cs);
 realStride = cairo_image_surface_get_stride(cs);
 for (y = 0; y < pixelHeight; y++) {
  for (x = 0; x < pixelWidth * 4; x += 4) {
   union {
    uint32_t v32;
    uint8_t v8[4];
   } v;

   v.v32 = ((uint32_t) (pix[x + 3])) << 24;
   v.v32 |= ((uint32_t) (pix[x])) << 16;
   v.v32 |= ((uint32_t) (pix[x + 1])) << 8;
   v.v32 |= ((uint32_t) (pix[x + 2]));
   data[x] = v.v8[0];
   data[x + 1] = v.v8[1];
   data[x + 2] = v.v8[2];
   data[x + 3] = v.v8[3];
  }
  pix += byteStride;
  data += realStride;
 }

 cairo_surface_mark_dirty(cs);
 g_ptr_array_add(i->images, cs);
}
