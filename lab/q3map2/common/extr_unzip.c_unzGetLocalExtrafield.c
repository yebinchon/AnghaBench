
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* pfile_in_zip_read; } ;
typedef TYPE_1__ unz_s ;
typedef int * unzFile ;
typedef unsigned int uLong ;
typedef scalar_t__ uInt ;
struct TYPE_4__ {unsigned int size_local_extrafield; unsigned int pos_local_extrafield; unsigned int offset_local_extrafield; int file; } ;
typedef TYPE_2__ file_in_zip_read_info_s ;


 int SEEK_SET ;
 int UNZ_ERRNO ;
 int UNZ_PARAMERROR ;
 int fread (void*,scalar_t__,int,int ) ;
 scalar_t__ fseek (int ,unsigned int,int ) ;

extern int unzGetLocalExtrafield (unzFile file,void *buf,unsigned len)
{
 unz_s* s;
 file_in_zip_read_info_s* pfile_in_zip_read_info;
 uInt read_now;
 uLong size_to_read;

 if (file==((void*)0))
  return UNZ_PARAMERROR;
 s=(unz_s*)file;
    pfile_in_zip_read_info=s->pfile_in_zip_read;

 if (pfile_in_zip_read_info==((void*)0))
  return UNZ_PARAMERROR;

 size_to_read = (pfile_in_zip_read_info->size_local_extrafield -
    pfile_in_zip_read_info->pos_local_extrafield);

 if (buf==((void*)0))
  return (int)size_to_read;

 if (len>size_to_read)
  read_now = (uInt)size_to_read;
 else
  read_now = (uInt)len ;

 if (read_now==0)
  return 0;

 if (fseek(pfile_in_zip_read_info->file,
              pfile_in_zip_read_info->offset_local_extrafield +
     pfile_in_zip_read_info->pos_local_extrafield,SEEK_SET)!=0)
  return UNZ_ERRNO;

 if (fread(buf,(uInt)size_to_read,1,pfile_in_zip_read_info->file)!=1)
  return UNZ_ERRNO;

 return (int)read_now;
}
