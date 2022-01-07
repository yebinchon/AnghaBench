
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;
typedef int filename ;


 int COM_StripExtension (char*,char*,int) ;
 int FS_ConvertPath (char*) ;
 int FS_FreeFileList (char**) ;
 char** FS_ListFilteredFiles (char const*,char const*,int *,int*,scalar_t__) ;
 int FS_SortFileList (char**,int) ;
 int MAX_STRING_CHARS ;
 int Q_strncpyz (char*,char*,int) ;

void FS_FilenameCompletion( const char *dir, const char *ext,
  qboolean stripExt, void(*callback)(const char *s), qboolean allowNonPureFilesOnDisk ) {
 char **filenames;
 int nfiles;
 int i;
 char filename[ MAX_STRING_CHARS ];

 filenames = FS_ListFilteredFiles( dir, ext, ((void*)0), &nfiles, allowNonPureFilesOnDisk );

 FS_SortFileList( filenames, nfiles );

 for( i = 0; i < nfiles; i++ ) {
  FS_ConvertPath( filenames[ i ] );
  Q_strncpyz( filename, filenames[ i ], MAX_STRING_CHARS );

  if( stripExt ) {
   COM_StripExtension(filename, filename, sizeof(filename));
  }

  callback( filename );
 }
 FS_FreeFileList( filenames );
}
