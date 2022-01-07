
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t fileHandle_t ;
typedef int byte ;
struct TYPE_4__ {int z; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {scalar_t__ zipFile; long zipFileLen; TYPE_2__ handleFiles; int zipFilePos; } ;
typedef int FILE ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int FS_FTell (size_t) ;
 int * FS_FileForHandle (size_t) ;
 int FS_Read (int *,int,size_t) ;



 int PK3_SEEK_BUFFER_SIZE ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int fs_searchpaths ;
 int fseek (int *,long,int) ;
 TYPE_3__* fsh ;
 scalar_t__ qtrue ;
 int unzOpenCurrentFile (int ) ;
 int unzSetOffset (int ,int ) ;

int FS_Seek( fileHandle_t f, long offset, int origin ) {
 int _origin;

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization" );
  return -1;
 }

 if (fsh[f].zipFile == qtrue) {


  byte buffer[PK3_SEEK_BUFFER_SIZE];
  int remainder;
  int currentPosition = FS_FTell( f );


  if ( offset < 0 ) {
   switch( origin ) {
    case 129:
     remainder = fsh[f].zipFileLen + offset;
     break;

    case 130:
     remainder = currentPosition + offset;
     break;

    case 128:
    default:
     remainder = 0;
     break;
   }

   if ( remainder < 0 ) {
    remainder = 0;
   }

   origin = 128;
  } else {
   if ( origin == 129 ) {
    remainder = fsh[f].zipFileLen - currentPosition + offset;
   } else {
    remainder = offset;
   }
  }

  switch( origin ) {
   case 128:
    if ( remainder == currentPosition ) {
     return offset;
    }
    unzSetOffset(fsh[f].handleFiles.file.z, fsh[f].zipFilePos);
    unzOpenCurrentFile(fsh[f].handleFiles.file.z);


   case 129:
   case 130:
    while( remainder > PK3_SEEK_BUFFER_SIZE ) {
     FS_Read( buffer, PK3_SEEK_BUFFER_SIZE, f );
     remainder -= PK3_SEEK_BUFFER_SIZE;
    }
    FS_Read( buffer, remainder, f );
    return offset;

   default:
    Com_Error( ERR_FATAL, "Bad origin in FS_Seek" );
    return -1;
  }
 } else {
  FILE *file;
  file = FS_FileForHandle(f);
  switch( origin ) {
  case 130:
   _origin = SEEK_CUR;
   break;
  case 129:
   _origin = SEEK_END;
   break;
  case 128:
   _origin = SEEK_SET;
   break;
  default:
   Com_Error( ERR_FATAL, "Bad origin in FS_Seek" );
   break;
  }

  return fseek( file, offset, _origin );
 }
}
