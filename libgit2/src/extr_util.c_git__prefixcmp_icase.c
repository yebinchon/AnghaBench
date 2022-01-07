
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_MAX ;
 int prefixcmp (char const*,int ,char const*,int) ;

int git__prefixcmp_icase(const char *str, const char *prefix)
{
 return prefixcmp(str, SIZE_MAX, prefix, 1);
}
