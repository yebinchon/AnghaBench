
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filestream; int z_filefunc; } ;
typedef TYPE_1__ zip64_internal ;
typedef int uLong ;
typedef scalar_t__ uInt ;


 int ZIP_ERRNO ;
 int ZIP_OK ;
 scalar_t__ ZWRITE64 (int ,int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int zip64local_putValue (int *,int ,int ,int) ;

int Write_GlobalComment(zip64_internal* zi, const char* global_comment)
{
  int err = ZIP_OK;
  uInt size_global_comment = 0;

  if(global_comment != ((void*)0))
    size_global_comment = (uInt)strlen(global_comment);

  err = zip64local_putValue(&zi->z_filefunc,zi->filestream,(uLong)size_global_comment,2);

  if (err == ZIP_OK && size_global_comment > 0)
  {
    if (ZWRITE64(zi->z_filefunc,zi->filestream, global_comment, size_global_comment) != size_global_comment)
      err = ZIP_ERRNO;
  }
  return err;
}
