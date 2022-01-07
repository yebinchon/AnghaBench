
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DefaultExtension (char*,char*) ;
 int ExtractFileExtension (char*,char*) ;
 int LoadBSPFile (char*) ;
 int PrintBSPFileSizes () ;
 int Q_filelength (int *) ;
 int Q_stricmp (char*,char*) ;
 int StripExtension (char*) ;
 int Sys_Printf (char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int infoMode ;
 int qtrue ;
 int strcpy (char*,char*) ;

int BSPInfoMain( int count, char **fileNames ){
 int i;
 char source[ 1024 ], ext[ 64 ];
 int size;
 FILE *f;



 if ( count < 1 ) {
  Sys_Printf( "No files to dump info for.\n" );
  return -1;
 }


 infoMode = qtrue;


 for ( i = 0; i < count; i++ )
 {
  Sys_Printf( "---------------------------------\n" );


  strcpy( source, fileNames[ i ] );
  ExtractFileExtension( source, ext );
  if ( !Q_stricmp( ext, "map" ) ) {
   StripExtension( source );
  }
  DefaultExtension( source, ".bsp" );
  f = fopen( source, "rb" );
  if ( f ) {
   size = Q_filelength( f );
   fclose( f );
  }
  else{
   size = 0;
  }


  Sys_Printf( "%s\n", source );
  LoadBSPFile( source );
  PrintBSPFileSizes();


  Sys_Printf( "\n" );
  Sys_Printf( "          total         %9d\n", size );
  Sys_Printf( "                        %9d KB\n", size / 1024 );
  Sys_Printf( "                        %9d MB\n", size / ( 1024 * 1024 ) );

  Sys_Printf( "---------------------------------\n" );
 }


 return i;
}
