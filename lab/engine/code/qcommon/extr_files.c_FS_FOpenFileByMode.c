
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
typedef int fsMode_t ;
typedef int fileHandle_t ;
struct TYPE_2__ {int fileSize; int handleSync; } ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;


 int FS_FOpenFileAppend (char const*) ;
 int FS_FOpenFileRead (char const*,int*,int ) ;
 int FS_FOpenFileWrite (char const*) ;


 TYPE_1__* fsh ;
 int qfalse ;
 int qtrue ;

int FS_FOpenFileByMode( const char *qpath, fileHandle_t *f, fsMode_t mode ) {
 int r;
 qboolean sync;

 sync = qfalse;

 switch( mode ) {
  case 129:
   r = FS_FOpenFileRead( qpath, f, qtrue );
   break;
  case 128:
   *f = FS_FOpenFileWrite( qpath );
   r = 0;
   if (*f == 0) {
    r = -1;
   }
   break;
  case 130:
   sync = qtrue;
  case 131:
   *f = FS_FOpenFileAppend( qpath );
   r = 0;
   if (*f == 0) {
    r = -1;
   }
   break;
  default:
   Com_Error( ERR_FATAL, "FS_FOpenFileByMode: bad mode" );
   return -1;
 }

 if (!f) {
  return r;
 }

 if ( *f ) {
  fsh[*f].fileSize = r;
 }
 fsh[*f].handleSync = sync;

 return r;
}
