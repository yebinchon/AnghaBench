
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ khiter_t ;
typedef int git_index_entry ;
typedef int git_idxmap ;


 int GIT_ENOTFOUND ;
 scalar_t__ idx ;
 int kh_del (scalar_t__,int *,scalar_t__) ;
 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get (int ,int *,int const*) ;

int git_idxmap_delete(git_idxmap *map, const git_index_entry *key)
{
 khiter_t idx = kh_get(idx, map, key);
 if (idx == kh_end(map))
  return GIT_ENOTFOUND;
 kh_del(idx, map, idx);
 return 0;
}
