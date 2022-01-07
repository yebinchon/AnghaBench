
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_stat {int dummy; } ;
struct stat64 {int dummy; } ;


 int CATCH_EINTR (int) ;
 int copy_stat (struct uml_stat*,struct stat64*) ;
 int errno ;
 int stat64 (char const*,struct stat64*) ;

int os_stat_file(const char *file_name, struct uml_stat *ubuf)
{
 struct stat64 sbuf;
 int err;

 CATCH_EINTR(err = stat64(file_name, &sbuf));
 if (err < 0)
  return -errno;

 if (ubuf != ((void*)0))
  copy_stat(ubuf, &sbuf);
 return err;
}
