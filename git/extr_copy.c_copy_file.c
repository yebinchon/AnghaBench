
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_WRONLY ;
 scalar_t__ adjust_shared_perm (char const*) ;
 scalar_t__ close (int) ;
 int copy_fd (int,int) ;
 int error_errno (char*,...) ;
 int open (char const*,int,...) ;

int copy_file(const char *dst, const char *src, int mode)
{
 int fdi, fdo, status;

 mode = (mode & 0111) ? 0777 : 0666;
 if ((fdi = open(src, O_RDONLY)) < 0)
  return fdi;
 if ((fdo = open(dst, O_WRONLY | O_CREAT | O_EXCL, mode)) < 0) {
  close(fdi);
  return fdo;
 }
 status = copy_fd(fdi, fdo);
 switch (status) {
 case 129:
  error_errno("copy-fd: read returned");
  break;
 case 128:
  error_errno("copy-fd: write returned");
  break;
 }
 close(fdi);
 if (close(fdo) != 0)
  return error_errno("%s: close error", dst);

 if (!status && adjust_shared_perm(dst))
  return -1;

 return status;
}
