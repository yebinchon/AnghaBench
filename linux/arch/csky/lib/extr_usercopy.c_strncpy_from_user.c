
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long EFAULT ;
 int __do_strncpy_from_user (char*,char const*,long,long) ;
 scalar_t__ access_ok (char const*,int) ;

long strncpy_from_user(char *dst, const char *src, long count)
{
 long res = -EFAULT;

 if (access_ok(src, 1))
  __do_strncpy_from_user(dst, src, count, res);
 return res;
}
