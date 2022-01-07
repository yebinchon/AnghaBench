
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strmap ;


 size_t kh_end (int *) ;
 int kh_exist (int *,size_t) ;
 size_t kh_get (int ,int *,char const*) ;
 void* kh_val (int *,size_t) ;
 int str ;

void *git_strmap_get(git_strmap *map, const char *key)
{
 size_t idx = kh_get(str, map, key);
 if (idx == kh_end(map) || !kh_exist(map, idx))
  return ((void*)0);
 return kh_val(map, idx);
}
