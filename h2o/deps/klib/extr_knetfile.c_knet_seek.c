
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ type; scalar_t__ file_size; scalar_t__ is_ready; int fd; } ;
typedef TYPE_1__ knetFile ;
typedef scalar_t__ int64_t ;


 int EINVAL ;
 int ESPIPE ;
 scalar_t__ KNF_TYPE_FTP ;
 scalar_t__ KNF_TYPE_HTTP ;
 scalar_t__ KNF_TYPE_LOCAL ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int lseek (int ,scalar_t__,int) ;
 int stderr ;
 char* strerror (int ) ;

off_t knet_seek(knetFile *fp, int64_t off, int whence)
{
 if (whence == SEEK_SET && off == fp->offset) return 0;
 if (fp->type == KNF_TYPE_LOCAL) {


  off_t offset = lseek(fp->fd, off, whence);
  if (offset == -1) {


   return -1;
  }
  fp->offset = offset;
  return off;
 } else if (fp->type == KNF_TYPE_FTP) {
        if (whence==SEEK_CUR)
            fp->offset += off;
        else if (whence==SEEK_SET)
            fp->offset = off;
        else if ( whence==SEEK_END)
            fp->offset = fp->file_size+off;
  fp->is_ready = 0;
  return off;
 } else if (fp->type == KNF_TYPE_HTTP) {
  if (whence == SEEK_END) {
   fprintf(stderr, "[knet_seek] SEEK_END is not supported for HTTP. Offset is unchanged.\n");
   errno = ESPIPE;
   return -1;
  }
        if (whence==SEEK_CUR)
            fp->offset += off;
        else if (whence==SEEK_SET)
            fp->offset = off;
  fp->is_ready = 0;
  return off;
 }
 errno = EINVAL;
    fprintf(stderr,"[knet_seek] %s\n", strerror(errno));
 return -1;
}
