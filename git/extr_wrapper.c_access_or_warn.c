
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int access (char const*,int) ;
 int access_error_is_ok (int ,unsigned int) ;
 int errno ;
 int warn_on_inaccessible (char const*) ;

int access_or_warn(const char *path, int mode, unsigned flag)
{
 int ret = access(path, mode);
 if (ret && !access_error_is_ok(errno, flag))
  warn_on_inaccessible(path);
 return ret;
}
