
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strmap ;


 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get (int ,int *,char const*) ;
 int str ;

int git_strmap_exists(git_strmap *map, const char *key)
{
 return kh_get(str, map, key) != kh_end(map);
}
