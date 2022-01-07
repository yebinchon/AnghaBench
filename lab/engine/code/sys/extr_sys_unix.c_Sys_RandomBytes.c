
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int byte ;
typedef int FILE ;


 int _IONBF ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int *,int,int,int *) ;
 int qfalse ;
 int qtrue ;
 int setvbuf (int *,int *,int ,int ) ;

qboolean Sys_RandomBytes( byte *string, int len )
{
 FILE *fp;

 fp = fopen( "/dev/urandom", "r" );
 if( !fp )
  return qfalse;

 setvbuf( fp, ((void*)0), _IONBF, 0 );

 if( fread( string, sizeof( byte ), len, fp ) != len )
 {
  fclose( fp );
  return qfalse;
 }

 fclose( fp );
 return qtrue;
}
