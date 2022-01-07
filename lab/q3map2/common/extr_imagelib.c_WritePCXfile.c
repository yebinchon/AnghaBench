
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int manufacturer; int version; int encoding; int bits_per_pixel; int color_planes; int data; void* palette_type; void* bytes_per_line; void* vres; void* hres; void* ymax; void* xmax; scalar_t__ ymin; scalar_t__ xmin; } ;
typedef TYPE_1__ pcx_t ;
typedef int byte ;


 void* LittleShort (int) ;
 int SaveFile (char const*,TYPE_1__*,int) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* safe_malloc (int) ;

void WritePCXfile( const char *filename, byte *data,
       int width, int height, byte *palette ){
 int i, j, length;
 pcx_t *pcx;
 byte *pack;

 pcx = safe_malloc( width * height * 2 + 1000 );
 memset( pcx, 0, sizeof( *pcx ) );

 pcx->manufacturer = 0x0a;
 pcx->version = 5;
 pcx->encoding = 1;
 pcx->bits_per_pixel = 8;
 pcx->xmin = 0;
 pcx->ymin = 0;
 pcx->xmax = LittleShort( (short)( width - 1 ) );
 pcx->ymax = LittleShort( (short)( height - 1 ) );
 pcx->hres = LittleShort( (short)width );
 pcx->vres = LittleShort( (short)height );
 pcx->color_planes = 1;
 pcx->bytes_per_line = LittleShort( (short)width );
 pcx->palette_type = LittleShort( 1 );


 pack = &pcx->data;

 for ( i = 0 ; i < height ; i++ )
 {
  for ( j = 0 ; j < width ; j++ )
  {
   if ( ( *data & 0xc0 ) != 0xc0 ) {
    *pack++ = *data++;
   }
   else
   {
    *pack++ = 0xc1;
    *pack++ = *data++;
   }
  }
 }


 *pack++ = 0x0c;
 for ( i = 0 ; i < 768 ; i++ )
  *pack++ = *palette++;


 length = pack - (byte *)pcx;
 SaveFile( filename, pcx, length );

 free( pcx );
}
