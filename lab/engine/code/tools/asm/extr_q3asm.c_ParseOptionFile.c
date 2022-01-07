
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COM_Parse (char*) ;
 int DefaultExtension (char*,char*) ;
 int LoadFile (char*,void**) ;
 int MAX_OS_PATH ;
 int * asmFileNames ;
 char const* com_token ;
 int copystring (char const*) ;
 size_t numAsmFiles ;
 char* outputFilename ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static void ParseOptionFile( const char *filename ) {
 char expanded[MAX_OS_PATH];
 char *text, *text_p;

 strcpy( expanded, filename );
 DefaultExtension( expanded, ".q3asm" );
 LoadFile( expanded, (void **)&text );
 if ( !text ) {
  return;
 }

 text_p = text;

 while( ( text_p = COM_Parse( text_p ) ) != 0 ) {
  if ( !strcmp( com_token, "-o" ) ) {

   text_p = COM_Parse( text_p );
   if ( text_p ) {
    strcpy( outputFilename, com_token );
   }
   continue;
  }

  asmFileNames[ numAsmFiles ] = copystring( com_token );
  numAsmFiles++;
 }
}
