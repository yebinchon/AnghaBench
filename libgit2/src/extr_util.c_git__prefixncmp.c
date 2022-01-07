
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prefixcmp (char const*,size_t,char const*,int) ;

int git__prefixncmp(const char *str, size_t str_n, const char *prefix)
{
 return prefixcmp(str, str_n, prefix, 0);
}
