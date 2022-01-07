
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;
typedef int fbuffer ;
typedef int buffer ;


 scalar_t__ CL_CDKeyValidate (char*,int *) ;
 int Com_Memset (char*,int ,int) ;
 int Com_sprintf (char*,int,char*,char const*) ;
 int FS_FCloseFile (int ) ;
 int FS_Read (char*,int,int ) ;
 int FS_SV_FOpenFileRead (char*,int *) ;
 int MAX_OSPATH ;
 int Q_strncpyz (int ,char*,int) ;
 int cl_cdkey ;

void Com_ReadCDKey( const char *filename ) {
 fileHandle_t f;
 char buffer[33];
 char fbuffer[MAX_OSPATH];

 Com_sprintf(fbuffer, sizeof(fbuffer), "%s/q3key", filename);

 FS_SV_FOpenFileRead( fbuffer, &f );
 if ( !f ) {
  Q_strncpyz( cl_cdkey, "                ", 17 );
  return;
 }

 Com_Memset( buffer, 0, sizeof(buffer) );

 FS_Read( buffer, 16, f );
 FS_FCloseFile( f );

 if (CL_CDKeyValidate(buffer, ((void*)0))) {
  Q_strncpyz( cl_cdkey, buffer, 17 );
 } else {
  Q_strncpyz( cl_cdkey, "                ", 17 );
 }
}
