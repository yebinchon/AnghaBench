
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,char,size_t) ;
 char* xmemdupz (char const*,int) ;

char *xstrndup(const char *str, size_t len)
{
 char *p = memchr(str, '\0', len);
 return xmemdupz(str, p ? p - str : len);
}
