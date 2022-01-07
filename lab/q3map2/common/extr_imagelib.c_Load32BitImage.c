
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int ExtractFileExtension (char const*,char*) ;
 int Load256Image (char const*,int**,int**,int*,int*) ;
 int LoadTGA (char const*,int**,int*,int*) ;
 int Q_stricmp (char*,char*) ;
 int* safe_malloc (int) ;

void Load32BitImage( const char *name, unsigned **pixels, int *width, int *height ){
 char ext[128];
 byte *palette;
 byte *pixels8;
 byte *pixels32;
 int size;
 int i;
 int v;

 ExtractFileExtension( name, ext );
 if ( !Q_stricmp( ext, "tga" ) ) {
  LoadTGA( name, (byte **)pixels, width, height );
 }
 else {
  Load256Image( name, &pixels8, &palette, width, height );
  if ( !pixels ) {
   return;
  }
  size = *width * *height;
  pixels32 = safe_malloc( size * 4 );
  *pixels = (unsigned *)pixels32;
  for ( i = 0 ; i < size ; i++ ) {
   v = pixels8[i];
   pixels32[i * 4 + 0] = palette[ v * 3 + 0 ];
   pixels32[i * 4 + 1] = palette[ v * 3 + 1 ];
   pixels32[i * 4 + 2] = palette[ v * 3 + 2 ];
   pixels32[i * 4 + 3] = 0xff;
  }
 }
}
