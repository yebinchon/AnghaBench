
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;
typedef int byte ;
typedef int FILE ;


 int Error (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (int*) ;
 int fwrite (int*,int,int,int *) ;
 int memset (int*,int ,int) ;
 int* safe_malloc (int) ;

void WriteTGA24( char *filename, byte *data, int width, int height, qboolean flip ){
 int i, c;
 byte *buffer, *in;
 FILE *file;



 buffer = safe_malloc( width * height * 3 + 18 );
 memset( buffer, 0, 18 );
 buffer[ 2 ] = 2;
 buffer[ 12 ] = width & 255;
 buffer[ 13 ] = width >> 8;
 buffer[ 14 ] = height & 255;
 buffer[ 15 ] = height >> 8;
 buffer[ 16 ] = 24;


 c = ( width * height * 3 ) + 18;
 for ( i = 18; i < c; i += 3 )
 {
  buffer[ i ] = data[ i - 18 + 2 ];
  buffer[ i + 1 ] = data[ i - 18 + 1 ];
  buffer[ i + 2 ] = data[ i - 18 + 0 ];
 }


 file = fopen( filename, "wb" );
 if ( file == ((void*)0) ) {
  Error( "Unable to open %s for writing", filename );
 }


 if ( flip ) {
  fwrite( buffer, 1, 18, file );
  for ( in = buffer + ( ( height - 1 ) * width * 3 ) + 18; in >= buffer; in -= ( width * 3 ) )
   fwrite( in, 1, ( width * 3 ), file );
 }
 else{
  fwrite( buffer, 1, c, file );
 }


 fclose( file );
 free( buffer );
}
