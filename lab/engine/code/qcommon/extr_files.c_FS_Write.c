
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t fileHandle_t ;
typedef int byte ;
struct TYPE_2__ {scalar_t__ handleSync; } ;
typedef int FILE ;


 int Com_Error (int ,char*) ;
 int Com_Printf (char*) ;
 int ERR_FATAL ;
 int * FS_FileForHandle (size_t) ;
 int fflush (int *) ;
 int fs_searchpaths ;
 TYPE_1__* fsh ;
 int fwrite (int *,int,int,int *) ;

int FS_Write( const void *buffer, int len, fileHandle_t h ) {
 int block, remaining;
 int written;
 byte *buf;
 int tries;
 FILE *f;

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
 }

 if ( !h ) {
  return 0;
 }

 f = FS_FileForHandle(h);
 buf = (byte *)buffer;

 remaining = len;
 tries = 0;
 while (remaining) {
  block = remaining;
  written = fwrite (buf, 1, block, f);
  if (written == 0) {
   if (!tries) {
    tries = 1;
   } else {
    Com_Printf( "FS_Write: 0 bytes written\n" );
    return 0;
   }
  }

  if (written == -1) {
   Com_Printf( "FS_Write: -1 bytes written\n" );
   return 0;
  }

  remaining -= written;
  buf += written;
 }
 if ( fsh[h].handleSync ) {
  fflush( f );
 }
 return len;
}
