
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;


 int FS_SEEK_CUR ;
 int FS_Seek (int ,int,int ) ;
 int PAD (int,int) ;
 int Q_strncmp (char*,char*,int) ;
 int S_ReadChunkInfo (int ,char*) ;

__attribute__((used)) static int S_FindRIFFChunk( fileHandle_t f, char *chunk ) {
 char name[5];
 int len;

 while( ( len = S_ReadChunkInfo(f, name) ) >= 0 )
 {

  if( !Q_strncmp( name, chunk, 4 ) )
   return len;

  len = PAD( len, 2 );


  FS_Seek( f, len, FS_SEEK_CUR );
 }

 return -1;
}
