
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ khiter_t ;
typedef int git_offmap ;
typedef int git_off_t ;


 int GIT_ENOTFOUND ;
 int kh_del (int ,int *,scalar_t__) ;
 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get (int ,int *,int const) ;
 int off ;

int git_offmap_delete(git_offmap *map, const git_off_t key)
{
 khiter_t idx = kh_get(off, map, key);
 if (idx == kh_end(map))
  return GIT_ENOTFOUND;
 kh_del(off, map, idx);
 return 0;
}
