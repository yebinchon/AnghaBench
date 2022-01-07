
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int png_struct ;
typedef int png_info ;
struct TYPE_2__ {int size; scalar_t__ offset; int * buffer; } ;
typedef TYPE_1__ pngBuffer_t ;
typedef int byte ;


 int PNGReadData ;
 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_FILLER_AFTER ;
 int PNG_INFO_tRNS ;
 int PNG_LIBPNG_VER_STRING ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*) ;
 int free (int **) ;
 int * png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,int *,int *,int *) ;
 int png_destroy_read_struct (int **,int **,int **) ;
 int png_get_IHDR (int *,int *,int*,int*,int*,int*,int *,int *,int *) ;
 int png_get_channels (int *,int *) ;
 scalar_t__ png_get_valid (int *,int *,int ) ;
 int png_jmpbuf (int *) ;
 int png_read_image (int *,int **) ;
 int png_read_info (int *,int *) ;
 int png_set_expand (int *) ;
 int png_set_filler (int *,int,int ) ;
 int png_set_read_fn (int *,void*,int ) ;
 int png_set_strip_16 (int *) ;
 scalar_t__ png_sig_cmp (int *,int ,int) ;
 void* safe_malloc (int) ;
 scalar_t__ setjmp (int ) ;

__attribute__((used)) static void LoadPNGBuffer( byte *buffer, int size, byte **pixels, int *width, int *height ){
 png_struct *png;
 png_info *info, *end;
    pngBuffer_t pb;
 int i, bitDepth, colorType, channels;
 png_uint_32 w, h;
 byte **rowPointers;


 if ( buffer == ((void*)0) || size <= 0 || pixels == ((void*)0) || width == ((void*)0) || height == ((void*)0) ) {
  return;
 }


 *pixels = 0;
 *width = 0;
 *height = 0;


 if ( png_sig_cmp( buffer, 0, 8 ) != 0 ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Invalid PNG file\n" );
  return;
 }


 png = png_create_read_struct( PNG_LIBPNG_VER_STRING, ((void*)0), ((void*)0), ((void*)0) );
 if ( png == ((void*)0) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Unable to create PNG read struct\n" );
  return;
 }

 info = png_create_info_struct( png );
 if ( info == ((void*)0) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Unable to create PNG info struct\n" );
  png_destroy_read_struct( &png, ((void*)0), ((void*)0) );
  return;
 }

 end = png_create_info_struct( png );
 if ( end == ((void*)0) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Unable to create PNG end info struct\n" );
  png_destroy_read_struct( &png, &info, ((void*)0) );
  return;
 }


    pb.buffer = buffer;
    pb.size = size;
    pb.offset = 0;
 png_set_read_fn( png, (void*)&pb, PNGReadData );


 if ( setjmp( png_jmpbuf(png) ) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: An error occurred reading PNG image\n" );
  png_destroy_read_struct( &png, &info, &end );
  return;
 }




 png_read_info( png, info );


 png_get_IHDR( png, info,
      &w, &h, &bitDepth, &colorType, ((void*)0), ((void*)0), ((void*)0) );


 channels = png_get_channels( png, info );




 if ( ( colorType == PNG_COLOR_TYPE_PALETTE && bitDepth <= 8 ) ||
   ( colorType == PNG_COLOR_TYPE_GRAY && bitDepth <= 8 ) ||
   png_get_valid( png, info, PNG_INFO_tRNS ) ) {
  png_set_expand( png );
 }


 if ( bitDepth == 16 ) {
  png_set_strip_16( png );
 }


 if ( bitDepth == 8 && colorType == PNG_COLOR_TYPE_RGB ) {
  png_set_filler( png, 255, PNG_FILLER_AFTER );
 }


 *width = w;
 *height = h;
 *pixels = safe_malloc( w * h * 4 );


 rowPointers = safe_malloc( h * sizeof( byte* ) );
 for ( i = 0; i < h; i++ )
  rowPointers[ i ] = *pixels + ( i * w * 4 );


 png_read_image( png, rowPointers );


 free( rowPointers );
 png_destroy_read_struct( &png, &info, &end );

}
