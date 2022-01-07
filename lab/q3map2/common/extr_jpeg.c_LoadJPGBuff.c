
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int error_exit; } ;
struct my_jpeg_error_mgr {int setjmp_buffer; TYPE_2__ pub; } ;
struct jpeg_decompress_struct {int output_width; int output_components; int output_height; int output_scanline; int out_color_components; TYPE_1__* mem; int err; } ;
typedef int j_common_ptr ;
struct TYPE_3__ {int * (* alloc_sarray ) (int ,int ,int,int) ;} ;
typedef int * JSAMPARRAY ;


 int JPOOL_IMAGE ;
 int TRUE ;
 scalar_t__ errormsg ;
 int j_putGrayScanlineToRGB (int ,int,unsigned char*,int) ;
 int j_putRGBAScanline (int ,int,unsigned char*,int) ;
 int j_putRGBScanline (int ,int,unsigned char*,int) ;
 int jpeg_buffer_src (struct jpeg_decompress_struct*,void*,int) ;
 int jpeg_create_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_destroy_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_finish_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_read_header (struct jpeg_decompress_struct*,int ) ;
 int jpeg_read_scanlines (struct jpeg_decompress_struct*,int *,int) ;
 int jpeg_start_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_std_error (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (unsigned char*,int ,int) ;
 int my_jpeg_error_exit ;
 scalar_t__ setjmp (int ) ;
 int * stub1 (int ,int ,int,int) ;

int LoadJPGBuff( void *src_buffer, int src_size, unsigned char **pic, int *width, int *height ) {
 struct jpeg_decompress_struct cinfo;
 struct my_jpeg_error_mgr jerr;
 JSAMPARRAY buffer;
 int row_stride, size;

 cinfo.err = jpeg_std_error( &jerr.pub );
 jerr.pub.error_exit = my_jpeg_error_exit;

 if ( setjmp( jerr.setjmp_buffer ) ) {
  *pic = (unsigned char*)errormsg;
  jpeg_destroy_decompress( &cinfo );
  return -1;
 }

 jpeg_create_decompress( &cinfo );
 jpeg_buffer_src( &cinfo, src_buffer, src_size );
 jpeg_read_header( &cinfo, TRUE );
 jpeg_start_decompress( &cinfo );

 row_stride = cinfo.output_width * cinfo.output_components;

 size = cinfo.output_width * cinfo.output_height * 4;
 *width = cinfo.output_width;
 *height = cinfo.output_height;
 *pic = (unsigned char*)( malloc( size + 1 ) );
 memset( *pic, 0, size + 1 );

 buffer = ( *cinfo.mem->alloc_sarray )( ( j_common_ptr ) & cinfo, JPOOL_IMAGE, row_stride, 1 );

 while ( cinfo.output_scanline < cinfo.output_height )
 {
  jpeg_read_scanlines( &cinfo, buffer, 1 );

  if ( cinfo.out_color_components == 4 ) {
   j_putRGBAScanline( buffer[0], cinfo.output_width, *pic, cinfo.output_scanline - 1 );
  }
  else if ( cinfo.out_color_components == 3 ) {
   j_putRGBScanline( buffer[0], cinfo.output_width, *pic, cinfo.output_scanline - 1 );
  }
  else if ( cinfo.out_color_components == 1 ) {
   j_putGrayScanlineToRGB( buffer[0], cinfo.output_width, *pic, cinfo.output_scanline - 1 );
  }
 }

 jpeg_finish_decompress( &cinfo );
 jpeg_destroy_decompress( &cinfo );

 return 0;
}
