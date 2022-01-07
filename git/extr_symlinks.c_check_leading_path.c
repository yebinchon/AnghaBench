
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_cache ;
 int threaded_check_leading_path (int *,char const*,int) ;

int check_leading_path(const char *name, int len)
{
 return threaded_check_leading_path(&default_cache, name, len);
}
