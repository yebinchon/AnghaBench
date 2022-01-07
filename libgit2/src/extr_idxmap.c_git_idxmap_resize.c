
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int khiter_t ;
typedef int git_idxmap ;


 int git__is_uint32 (size_t) ;
 int git_error_set_oom () ;
 int idx ;
 scalar_t__ kh_resize (int ,int *,int ) ;

int git_idxmap_resize(git_idxmap *map, size_t size)
{
 if (!git__is_uint32(size) ||
     kh_resize(idx, map, (khiter_t)size) < 0) {
  git_error_set_oom();
  return -1;
 }
 return 0;
}
