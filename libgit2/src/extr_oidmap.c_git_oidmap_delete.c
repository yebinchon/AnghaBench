
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ khiter_t ;
typedef int git_oidmap ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int kh_del (int ,int *,scalar_t__) ;
 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get (int ,int *,int const*) ;
 int oid ;

int git_oidmap_delete(git_oidmap *map, const git_oid *key)
{
 khiter_t idx = kh_get(oid, map, key);
 if (idx == kh_end(map))
  return GIT_ENOTFOUND;
 kh_del(oid, map, idx);
 return 0;
}
