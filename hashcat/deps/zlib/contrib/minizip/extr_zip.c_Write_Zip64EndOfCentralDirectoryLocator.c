
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filestream; int z_filefunc; scalar_t__ add_position_when_writing_offset; } ;
typedef TYPE_1__ zip64_internal ;
typedef scalar_t__ uLong ;
typedef scalar_t__ ZPOS64_T ;


 scalar_t__ ZIP64ENDLOCHEADERMAGIC ;
 int ZIP_OK ;
 int zip64local_putValue (int *,int ,scalar_t__,int) ;

int Write_Zip64EndOfCentralDirectoryLocator(zip64_internal* zi, ZPOS64_T zip64eocd_pos_inzip)
{
  int err = ZIP_OK;
  ZPOS64_T pos = zip64eocd_pos_inzip - zi->add_position_when_writing_offset;

  err = zip64local_putValue(&zi->z_filefunc,zi->filestream,(uLong)ZIP64ENDLOCHEADERMAGIC,4);


    if (err==ZIP_OK)
      err = zip64local_putValue(&zi->z_filefunc,zi->filestream,(uLong)0,4);


    if (err==ZIP_OK)
      err = zip64local_putValue(&zi->z_filefunc,zi->filestream, pos,8);


    if (err==ZIP_OK)
      err = zip64local_putValue(&zi->z_filefunc,zi->filestream,(uLong)1,4);

    return err;
}
