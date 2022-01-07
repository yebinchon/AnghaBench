
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_stat {int dummy; } ;
struct stat64 {int dummy; } ;


 int CATCH_EINTR (int) ;
 int copy_stat (struct uml_stat*,struct stat64*) ;
 int errno ;
 int fstat64 (int const,struct stat64*) ;

int os_stat_fd(const int fd, struct uml_stat *ubuf)
{
 struct stat64 sbuf;
 int err;

 CATCH_EINTR(err = fstat64(fd, &sbuf));
 if (err < 0)
  return -errno;

 if (ubuf != ((void*)0))
  copy_stat(ubuf, &sbuf);
 return err;
}
