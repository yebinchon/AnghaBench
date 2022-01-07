
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

size_t is_prefixed(const char *str, const char *pfx)
{
 size_t len = strlen(pfx);
 return strncmp(str, pfx, len) ? 0 : len;
}
