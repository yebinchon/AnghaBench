
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oidmap ;
typedef int git_oid ;


 size_t kh_end (int *) ;
 int kh_exist (int *,size_t) ;
 size_t kh_get (int ,int *,int const*) ;
 void* kh_val (int *,size_t) ;
 int oid ;

void *git_oidmap_get(git_oidmap *map, const git_oid *key)
{
 size_t idx = kh_get(oid, map, key);
 if (idx == kh_end(map) || !kh_exist(map, idx))
  return ((void*)0);
 return kh_val(map, idx);
}
