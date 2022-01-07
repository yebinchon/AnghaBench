
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fileHandle_t ;


 int FS_FCloseFile (scalar_t__) ;
 int FS_FOpenFileRead (char const*,scalar_t__*,int ) ;
 int qfalse ;

__attribute__((used)) static void SV_TouchFile( const char *filename ) {
 fileHandle_t f;

 FS_FOpenFileRead( filename, &f, qfalse );
 if ( f ) {
  FS_FCloseFile( f );
 }
}
