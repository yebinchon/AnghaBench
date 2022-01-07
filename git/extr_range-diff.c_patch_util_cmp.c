
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch_util {char const* diff; } ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static int patch_util_cmp(const void *dummy, const struct patch_util *a,
     const struct patch_util *b, const char *keydata)
{
 return strcmp(a->diff, keydata ? keydata : b->diff);
}
