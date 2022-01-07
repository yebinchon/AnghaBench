
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kmemmem (char const*,int,char const*,int ,int**) ;
 int strlen (char const*) ;

char *kstrnstr(const char *str, const char *pat, int n, int **_prep)
{
 return (char*)kmemmem(str, n, pat, strlen(pat), _prep);
}
