
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Error (char*) ;
 size_t fwrite (void const*,int,int,int *) ;

void SafeWrite( FILE *f, const void *buffer, int count ){
 if ( fwrite( buffer, 1, count, f ) != (size_t)count ) {
  Error( "File write failure" );
 }
}
