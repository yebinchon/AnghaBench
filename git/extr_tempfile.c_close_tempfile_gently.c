
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int fd; int * fp; } ;
typedef int FILE ;


 int EIO ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int is_tempfile_active (struct tempfile*) ;

int close_tempfile_gently(struct tempfile *tempfile)
{
 int fd;
 FILE *fp;
 int err;

 if (!is_tempfile_active(tempfile) || tempfile->fd < 0)
  return 0;

 fd = tempfile->fd;
 fp = tempfile->fp;
 tempfile->fd = -1;
 if (fp) {
  tempfile->fp = ((void*)0);
  if (ferror(fp)) {
   err = -1;
   if (!fclose(fp))
    errno = EIO;
  } else {
   err = fclose(fp);
  }
 } else {
  err = close(fd);
 }

 return err ? -1 : 0;
}
