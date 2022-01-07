
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct jpeg_decompress_struct {unsigned int output_width; unsigned int output_height; int output_components; int output_scanline; int out_color_space; TYPE_3__* err; int * member_0; } ;
struct TYPE_4__ {int setjmp_buffer; int pub; } ;
typedef TYPE_1__ q_jpeg_error_mgr_t ;
typedef unsigned char byte ;
struct TYPE_6__ {int output_message; int error_exit; } ;
struct TYPE_5__ {int (* FS_ReadFile ) (char*,void**) ;unsigned char* (* Malloc ) (unsigned int) ;int (* FS_FreeFile ) (void*) ;int (* Error ) (int ,char*,char const*,unsigned int,unsigned int,unsigned int,int) ;int (* Printf ) (int ,char*,char const*) ;} ;
typedef unsigned char** JSAMPARRAY ;


 int ERR_DROP ;
 int JCS_RGB ;
 int PRINT_ALL ;
 int R_JPGErrorExit ;
 int R_JPGOutputMessage ;
 int TRUE ;
 int jpeg_create_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_destroy_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_finish_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_mem_src (struct jpeg_decompress_struct*,unsigned char*,int) ;
 int jpeg_read_header (struct jpeg_decompress_struct*,int ) ;
 int jpeg_read_scanlines (struct jpeg_decompress_struct*,unsigned char**,int) ;
 int jpeg_start_decompress (struct jpeg_decompress_struct*) ;
 TYPE_3__* jpeg_std_error (int *) ;
 TYPE_2__ ri ;
 scalar_t__ setjmp (int ) ;
 int stub1 (char*,void**) ;
 int stub2 (void*) ;
 int stub3 (int ,char*,char const*) ;
 int stub4 (void*) ;
 int stub5 (int ,char*,char const*,unsigned int,unsigned int,unsigned int,int) ;
 unsigned char* stub6 (unsigned int) ;
 int stub7 (void*) ;

void R_LoadJPG(const char *filename, unsigned char **pic, int *width, int *height)
{



  struct jpeg_decompress_struct cinfo = {((void*)0)};
  q_jpeg_error_mgr_t jerr;

  JSAMPARRAY buffer;
  unsigned int row_stride;
  unsigned int pixelcount, memcount;
  unsigned int sindex, dindex;
  byte *out;
  int len;
 union {
  byte *b;
  void *v;
 } fbuffer;
  byte *buf;







  len = ri.FS_ReadFile ( ( char * ) filename, &fbuffer.v);
  if (!fbuffer.b || len < 0) {
 return;
  }
  cinfo.err = jpeg_std_error(&jerr.pub);
  cinfo.err->error_exit = R_JPGErrorExit;
  cinfo.err->output_message = R_JPGOutputMessage;


  if (setjmp(jerr.setjmp_buffer))
  {



    jpeg_destroy_decompress(&cinfo);
    ri.FS_FreeFile(fbuffer.v);


    ri.Printf(PRINT_ALL, ", loading file %s\n", filename);
    return;
  }


  jpeg_create_decompress(&cinfo);



  jpeg_mem_src(&cinfo, fbuffer.b, len);



  (void) jpeg_read_header(&cinfo, TRUE);
  cinfo.out_color_space = JCS_RGB;



  (void) jpeg_start_decompress(&cinfo);
  pixelcount = cinfo.output_width * cinfo.output_height;

  if(!cinfo.output_width || !cinfo.output_height
      || ((pixelcount * 4) / cinfo.output_width) / 4 != cinfo.output_height
      || pixelcount > 0x1FFFFFFF || cinfo.output_components != 3
    )
  {

    ri.FS_FreeFile (fbuffer.v);
    jpeg_destroy_decompress(&cinfo);

    ri.Error(ERR_DROP, "LoadJPG: %s has an invalid image format: %dx%d*4=%d, components: %d", filename,
      cinfo.output_width, cinfo.output_height, pixelcount * 4, cinfo.output_components);
  }

  memcount = pixelcount * 4;
  row_stride = cinfo.output_width * cinfo.output_components;

  out = ri.Malloc(memcount);

  *width = cinfo.output_width;
  *height = cinfo.output_height;







  while (cinfo.output_scanline < cinfo.output_height) {




 buf = ((out+(row_stride*cinfo.output_scanline)));
 buffer = &buf;
    (void) jpeg_read_scanlines(&cinfo, buffer, 1);
  }

  buf = out;


  sindex = pixelcount * cinfo.output_components;
  dindex = memcount;

  do
  {
    buf[--dindex] = 255;
    buf[--dindex] = buf[--sindex];
    buf[--dindex] = buf[--sindex];
    buf[--dindex] = buf[--sindex];
  } while(sindex);

  *pic = out;



  jpeg_finish_decompress(&cinfo);







  jpeg_destroy_decompress(&cinfo);






  ri.FS_FreeFile (fbuffer.v);






}
