
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct jpeg_compress_struct {int image_width; int image_height; int input_components; int next_scanline; scalar_t__ dest; TYPE_1__* comp_info; int in_color_space; TYPE_6__* err; } ;
struct TYPE_9__ {int setjmp_buffer; int pub; } ;
typedef TYPE_3__ q_jpeg_error_mgr_t ;
typedef TYPE_4__* my_dest_ptr ;
typedef int byte ;
struct TYPE_12__ {int output_message; int error_exit; } ;
struct TYPE_11__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_8__ {size_t free_in_buffer; } ;
struct TYPE_10__ {size_t size; TYPE_2__ pub; } ;
struct TYPE_7__ {int h_samp_factor; int v_samp_factor; } ;
typedef int * JSAMPROW ;


 int JCS_RGB ;
 int PRINT_ALL ;
 int R_JPGErrorExit ;
 int R_JPGOutputMessage ;
 int TRUE ;
 int jpegDest (struct jpeg_compress_struct*,int *,size_t) ;
 int jpeg_create_compress (struct jpeg_compress_struct*) ;
 int jpeg_destroy_compress (struct jpeg_compress_struct*) ;
 int jpeg_finish_compress (struct jpeg_compress_struct*) ;
 int jpeg_set_defaults (struct jpeg_compress_struct*) ;
 int jpeg_set_quality (struct jpeg_compress_struct*,int,int ) ;
 int jpeg_start_compress (struct jpeg_compress_struct*,int ) ;
 TYPE_6__* jpeg_std_error (int *) ;
 int jpeg_write_scanlines (struct jpeg_compress_struct*,int **,int) ;
 TYPE_5__ ri ;
 scalar_t__ setjmp (int ) ;
 int stub1 (int ,char*) ;

size_t RE_SaveJPGToBuffer(byte *buffer, size_t bufSize, int quality,
    int image_width, int image_height, byte *image_buffer, int padding)
{
  struct jpeg_compress_struct cinfo;
  q_jpeg_error_mgr_t jerr;
  JSAMPROW row_pointer[1];
  my_dest_ptr dest;
  int row_stride;
  size_t outcount;


  cinfo.err = jpeg_std_error(&jerr.pub);
  cinfo.err->error_exit = R_JPGErrorExit;
  cinfo.err->output_message = R_JPGOutputMessage;


  if (setjmp(jerr.setjmp_buffer))
  {



    jpeg_destroy_compress(&cinfo);

    ri.Printf(PRINT_ALL, "\n");
    return 0;
  }


  jpeg_create_compress(&cinfo);



  jpegDest(&cinfo, buffer, bufSize);


  cinfo.image_width = image_width;
  cinfo.image_height = image_height;
  cinfo.input_components = 3;
  cinfo.in_color_space = JCS_RGB;

  jpeg_set_defaults(&cinfo);
  jpeg_set_quality(&cinfo, quality, TRUE );

  if (quality >= 85) {
    cinfo.comp_info[0].h_samp_factor = 1;
    cinfo.comp_info[0].v_samp_factor = 1;
  }


  jpeg_start_compress(&cinfo, TRUE);



  row_stride = image_width * cinfo.input_components + padding;

  while (cinfo.next_scanline < cinfo.image_height) {




    row_pointer[0] = &image_buffer[((cinfo.image_height-1)*row_stride)-cinfo.next_scanline * row_stride];
    (void) jpeg_write_scanlines(&cinfo, row_pointer, 1);
  }


  jpeg_finish_compress(&cinfo);

  dest = (my_dest_ptr) cinfo.dest;
  outcount = dest->size - dest->pub.free_in_buffer;


  jpeg_destroy_compress(&cinfo);


  return outcount;
}
