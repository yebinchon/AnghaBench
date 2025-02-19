
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {long pos_in_central_dir; long byte_before_the_zipfile; int file; } ;
typedef TYPE_1__ unz_s ;
struct TYPE_7__ {int offset_curfile; } ;
typedef TYPE_2__ unz_file_info_internal ;
struct TYPE_8__ {int version; int version_needed; int flag; int compression_method; int dosDate; int crc; int compressed_size; int uncompressed_size; int size_filename; int size_file_extra; int size_file_comment; int disk_num_start; int internal_fa; int external_fa; int tmu_date; } ;
typedef TYPE_3__ unz_file_info ;
typedef int * unzFile ;
typedef int uLong ;
typedef int uInt ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int UNZ_BADZIPFILE ;
 int UNZ_ERRNO ;
 int UNZ_OK ;
 int UNZ_PARAMERROR ;
 size_t fread (char*,int ,int,int ) ;
 size_t fread_ql (char*,int ,int,int ) ;
 scalar_t__ fseek (int ,long,int ) ;
 int unz_GAME_QL ;
 int unzlocal_DosDateToTmuDate (int,int *) ;
 int unzlocal_getLong (int ,int*) ;
 int unzlocal_getShort (int ,int*) ;

__attribute__((used)) static int unzlocal_GetCurrentFileInfoInternal (unzFile file,
                                                  unz_file_info *pfile_info,
                                                  unz_file_info_internal
                                                  *pfile_info_internal,
                                                  char *szFileName,
              uLong fileNameBufferSize,
                                                  void *extraField,
              uLong extraFieldBufferSize,
                                                  char *szComment,
              uLong commentBufferSize)
{
 unz_s* s;
 unz_file_info file_info;
 unz_file_info_internal file_info_internal;
 int err=UNZ_OK;
 uLong uMagic;
 long lSeek=0;

 if (file == ((void*)0)) {
  return UNZ_PARAMERROR;
 }

 s = (unz_s*)file;

 if (fseek(s->file, s->pos_in_central_dir + s->byte_before_the_zipfile, SEEK_SET) != 0) {
  err=UNZ_ERRNO;
 }


 if (err == UNZ_OK) {
  if (unzlocal_getLong(s->file,&uMagic) != UNZ_OK) {
   err = UNZ_ERRNO;
  } else if (uMagic != 0x02014b50) {
   err = UNZ_BADZIPFILE;
  }
 }

 if (unzlocal_getShort(s->file,&file_info.version) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getShort(s->file,&file_info.version_needed) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getShort(s->file,&file_info.flag) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getShort(s->file,&file_info.compression_method) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getLong(s->file,&file_info.dosDate) != UNZ_OK)
  err=UNZ_ERRNO;

    unzlocal_DosDateToTmuDate(file_info.dosDate,&file_info.tmu_date);

 if (unzlocal_getLong(s->file,&file_info.crc) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getLong(s->file,&file_info.compressed_size) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getLong(s->file,&file_info.uncompressed_size) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getShort(s->file,&file_info.size_filename) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getShort(s->file,&file_info.size_file_extra) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getShort(s->file,&file_info.size_file_comment) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getShort(s->file,&file_info.disk_num_start) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getShort(s->file,&file_info.internal_fa) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getLong(s->file,&file_info.external_fa) != UNZ_OK)
  err=UNZ_ERRNO;

 if (unzlocal_getLong(s->file,&file_info_internal.offset_curfile) != UNZ_OK)
  err=UNZ_ERRNO;

 lSeek += file_info.size_filename;

 if ((err == UNZ_OK) && (szFileName != ((void*)0))) {
  uLong uSizeRead ;
  if (file_info.size_filename<fileNameBufferSize) {
   *(szFileName+file_info.size_filename)='\0';
   uSizeRead = file_info.size_filename;
  } else {
   uSizeRead = fileNameBufferSize;
  }

  if ((file_info.size_filename>0) && (fileNameBufferSize>0)) {
   size_t gametype;
   if (unz_GAME_QL == 1) {
    gametype = fread_ql(szFileName, (uInt)uSizeRead, 1, s->file);
   } else {
    gametype = fread(szFileName, (uInt)uSizeRead, 1, s->file);
   }

   if (gametype != 1) {
    err = UNZ_ERRNO;
   }
  }
  lSeek -= uSizeRead;
 }

 if ((err == UNZ_OK) && (extraField != ((void*)0))) {
  uLong uSizeRead ;
  if (file_info.size_file_extra < extraFieldBufferSize) {
   uSizeRead = file_info.size_file_extra;
  } else {
   uSizeRead = extraFieldBufferSize;
  }

  if (lSeek != 0) {
   if (fseek(s->file, lSeek, SEEK_CUR) == 0) {
    lSeek=0;
   } else {
    err=UNZ_ERRNO;
   }
  }
  if ((file_info.size_file_extra > 0) && (extraFieldBufferSize > 0)) {
   size_t gametype;
   if (unz_GAME_QL == 1) {
    gametype = fread_ql(extraField, (uInt)uSizeRead, 1, s->file);
   } else {
    gametype = fread(extraField, (uInt)uSizeRead, 1, s->file);
   }
   if (gametype != 1) {
    err=UNZ_ERRNO;
   }
  }
  lSeek += file_info.size_file_extra - uSizeRead;
 } else {
  lSeek += file_info.size_file_extra;
 }

 if ((err == UNZ_OK) && (szComment != ((void*)0))) {
  uLong uSizeRead ;
  if (file_info.size_file_comment < commentBufferSize) {
   *(szComment+file_info.size_file_comment) = '\0';
   uSizeRead = file_info.size_file_comment;
  } else {
   uSizeRead = commentBufferSize;
  }

  if (lSeek != 0) {
   if (fseek(s->file, lSeek, SEEK_CUR) ==0 ) {
    lSeek=0;
   } else {
    err=UNZ_ERRNO;
   }
  }
  if ((file_info.size_file_comment>0) && (commentBufferSize>0)) {
   size_t gametype;
   if (unz_GAME_QL == 1) {
    gametype = fread_ql(szComment, (uInt)uSizeRead, 1, s->file);
   } else {
    gametype = fread(szComment, (uInt)uSizeRead, 1, s->file);
   }
   if (gametype!=1) {
    err=UNZ_ERRNO;
   }
  }
  lSeek += file_info.size_file_comment - uSizeRead;
 } else {
  lSeek+=file_info.size_file_comment;
 }

 if ((err==UNZ_OK) && (pfile_info!=((void*)0))) {
  *pfile_info=file_info;
 }

 if ((err==UNZ_OK) && (pfile_info_internal!=((void*)0))) {
  *pfile_info_internal=file_info_internal;
 }

 return err;
}
