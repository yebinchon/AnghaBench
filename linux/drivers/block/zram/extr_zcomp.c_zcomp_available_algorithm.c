
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sysfs_match_string (int ,int,char const*) ;
 int backends ;
 int crypto_has_comp (char const*,int ,int ) ;

bool zcomp_available_algorithm(const char *comp)
{
 int i;

 i = __sysfs_match_string(backends, -1, comp);
 if (i >= 0)
  return 1;
 return crypto_has_comp(comp, 0, 0) == 1;
}
