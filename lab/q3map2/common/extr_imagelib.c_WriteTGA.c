
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (int*) ;
 int fwrite (int*,int,int,int *) ;
 int memset (int*,int ,int) ;
 int* safe_malloc (int) ;

void WriteTGA( const char *filename, byte *data, int width, int height ) {
 byte *buffer;
 int i;
 int c;
 FILE *f;

 buffer = safe_malloc( width * height * 4 + 18 );
 memset( buffer, 0, 18 );
 buffer[2] = 2;
 buffer[12] = width & 255;
 buffer[13] = width >> 8;
 buffer[14] = height & 255;
 buffer[15] = height >> 8;
 buffer[16] = 32;


 c = 18 + width * height * 4;
 for ( i = 18 ; i < c ; i += 4 )
 {
  buffer[i] = data[i - 18 + 2];
  buffer[i + 1] = data[i - 18 + 1];
  buffer[i + 2] = data[i - 18 + 0];
  buffer[i + 3] = data[i - 18 + 3];
 }

 f = fopen( filename, "wb" );
 fwrite( buffer, 1, c, f );
 fclose( f );

 free( buffer );
}
