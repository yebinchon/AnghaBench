
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;
typedef int git_idxmap ;


 size_t idx ;
 size_t kh_end (int *) ;
 int kh_exist (int *,size_t) ;
 size_t kh_get (int ,int *,int const*) ;
 void* kh_val (int *,size_t) ;

void *git_idxmap_get(git_idxmap *map, const git_index_entry *key)
{
 size_t idx = kh_get(idx, map, key);
 if (idx == kh_end(map) || !kh_exist(map, idx))
  return ((void*)0);
 return kh_val(map, idx);
}
