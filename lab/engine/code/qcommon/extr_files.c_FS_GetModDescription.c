
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fileHandle_t ;
typedef int descPath ;
typedef int FILE ;


 int Com_Memset (char*,int ,int) ;
 int Com_sprintf (char*,int,char*,char const*,int ) ;
 int FS_FCloseFile (scalar_t__) ;
 int * FS_FileForHandle (scalar_t__) ;
 int FS_SV_FOpenFileRead (char*,scalar_t__*) ;
 int MAX_INSTALL_PATH ;
 int PATH_SEP ;
 int Q_strncpyz (char*,char const*,int) ;
 int fread (char*,int,int,int *) ;

void FS_GetModDescription( const char *modDir, char *description, int descriptionLen ) {
 fileHandle_t descHandle;
 char descPath[MAX_INSTALL_PATH];
 int nDescLen;
 FILE *file;

 Com_sprintf( descPath, sizeof ( descPath ), "%s%cdescription.txt", modDir, PATH_SEP );
 nDescLen = FS_SV_FOpenFileRead( descPath, &descHandle );

 if ( nDescLen > 0 ) {
  file = FS_FileForHandle(descHandle);
  Com_Memset( description, 0, descriptionLen );
  nDescLen = fread(description, 1, descriptionLen, file);
  if (nDescLen >= 0) {
   description[nDescLen] = '\0';
  }
 } else {
  Q_strncpyz( description, modDir, descriptionLen );
 }

 if ( descHandle ) {
  FS_FCloseFile( descHandle );
 }
}
