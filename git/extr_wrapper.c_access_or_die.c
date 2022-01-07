
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int access (char const*,int) ;
 int access_error_is_ok (int ,unsigned int) ;
 int die_errno (int ,char const*) ;
 int errno ;

int access_or_die(const char *path, int mode, unsigned flag)
{
 int ret = access(path, mode);
 if (ret && !access_error_is_ok(errno, flag))
  die_errno(_("unable to access '%s'"), path);
 return ret;
}
