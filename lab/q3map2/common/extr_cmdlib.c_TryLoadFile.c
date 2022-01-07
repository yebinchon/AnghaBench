
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Q_filelength (int *) ;
 int SafeRead (int *,void*,int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 void* safe_malloc (int) ;

int TryLoadFile( const char *filename, void **bufferptr ){
 FILE *f;
 int length;
 void *buffer;

 *bufferptr = ((void*)0);

 f = fopen( filename, "rb" );
 if ( !f ) {
  return -1;
 }
 length = Q_filelength( f );
 buffer = safe_malloc( length + 1 );
 ( (char *)buffer )[length] = 0;
 SafeRead( f, buffer, length );
 fclose( f );

 *bufferptr = buffer;
 return length;
}
