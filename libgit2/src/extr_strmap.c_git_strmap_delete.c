
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ khiter_t ;
typedef int git_strmap ;


 int GIT_ENOTFOUND ;
 int kh_del (int ,int *,scalar_t__) ;
 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get (int ,int *,char const*) ;
 int str ;

int git_strmap_delete(git_strmap *map, const char *key)
{
 khiter_t idx = kh_get(str, map, key);
 if (idx == kh_end(map))
  return GIT_ENOTFOUND;
 kh_del(str, map, idx);
 return 0;
}
