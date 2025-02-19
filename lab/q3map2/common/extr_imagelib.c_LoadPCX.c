
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int xmin; int ymin; int xmax; int ymax; int hres; int vres; int bytes_per_line; int palette_type; int manufacturer; int version; int encoding; int bits_per_pixel; int color_planes; } ;
typedef TYPE_1__ pcx_t ;
typedef int byte ;


 int DECODEPCX (int*,int,int) ;
 int Error (char*,...) ;
 void* LittleShort (int) ;
 int free (TYPE_1__*) ;
 int memcpy (int*,int*,int) ;
 int* safe_malloc (int) ;
 int vfsLoadFile (char const*,void**,int ) ;

void LoadPCX( const char *filename, byte **pic, byte **palette, int *width, int *height ){
 byte *raw;
 pcx_t *pcx;
 int x, y, lsize;
 int len;
 int dataByte, runLength;
 byte *out, *pix;



 len = vfsLoadFile( filename, (void **)&raw, 0 );
 if ( len == -1 ) {
  Error( "LoadPCX: Couldn't read %s", filename );
 }



 pcx = (pcx_t *)raw;
 raw = &pcx->data;

 pcx->xmin = LittleShort( pcx->xmin );
 pcx->ymin = LittleShort( pcx->ymin );
 pcx->xmax = LittleShort( pcx->xmax );
 pcx->ymax = LittleShort( pcx->ymax );
 pcx->hres = LittleShort( pcx->hres );
 pcx->vres = LittleShort( pcx->vres );
 pcx->bytes_per_line = LittleShort( pcx->bytes_per_line );
 pcx->palette_type = LittleShort( pcx->palette_type );

 if ( pcx->manufacturer != 0x0a
   || pcx->version != 5
   || pcx->encoding != 1
   || pcx->bits_per_pixel != 8
   || pcx->xmax >= 640
   || pcx->ymax >= 480 ) {
  Error( "Bad pcx file %s", filename );
 }

 if ( palette ) {
  *palette = safe_malloc( 768 );
  memcpy( *palette, (byte *)pcx + len - 768, 768 );
 }

 if ( width ) {
  *width = pcx->xmax + 1;
 }
 if ( height ) {
  *height = pcx->ymax + 1;
 }

 if ( !pic ) {
  return;
 }

 out = safe_malloc( ( pcx->ymax + 1 ) * ( pcx->xmax + 1 ) );
 if ( !out ) {
  Error( "LoadPCX: couldn't allocate" );
 }

 *pic = out;
 pix = out;


 lsize = pcx->color_planes * pcx->bytes_per_line;


 for ( y = 0; y <= pcx->ymax; y++, pix += pcx->xmax + 1 )
 {

  for ( x = 0; x <= pcx->xmax; )
  {

   DECODEPCX( raw, dataByte, runLength );
   while ( runLength-- > 0 )
    pix[ x++ ] = dataByte;
  }


  while ( x < lsize )
  {
   DECODEPCX( raw, dataByte, runLength );
   x++;
  }
  while ( runLength-- > 0 )
   x++;
 }


 if ( raw - (byte *) pcx > len ) {
  Error( "PCX file %s was malformed", filename );
 }
 free( pcx );
}
