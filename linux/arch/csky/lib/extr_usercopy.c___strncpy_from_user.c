
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __do_strncpy_from_user (char*,char const*,long,long) ;

long __strncpy_from_user(char *dst, const char *src, long count)
{
 long res;

 __do_strncpy_from_user(dst, src, count, res);
 return res;
}
