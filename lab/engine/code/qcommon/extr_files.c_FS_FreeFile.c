
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int Hunk_ClearTempMemory () ;
 int Hunk_FreeTempMemory (void*) ;
 scalar_t__ fs_loadStack ;
 int fs_searchpaths ;

void FS_FreeFile( void *buffer ) {
 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
 }
 if ( !buffer ) {
  Com_Error( ERR_FATAL, "FS_FreeFile( NULL )" );
 }
 fs_loadStack--;

 Hunk_FreeTempMemory( buffer );


 if ( fs_loadStack == 0 ) {
  Hunk_ClearTempMemory();
 }
}
