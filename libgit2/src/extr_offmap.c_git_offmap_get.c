
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_offmap ;
typedef int git_off_t ;


 size_t kh_end (int *) ;
 int kh_exist (int *,size_t) ;
 size_t kh_get (int ,int *,int const) ;
 void* kh_val (int *,size_t) ;
 int off ;

void *git_offmap_get(git_offmap *map, const git_off_t key)
{
 size_t idx = kh_get(off, map, key);
 if (idx == kh_end(map) || !kh_exist(map, idx))
  return ((void*)0);
 return kh_val(map, idx);
}
