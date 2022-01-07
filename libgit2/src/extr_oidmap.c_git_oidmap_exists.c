
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oidmap ;
typedef int git_oid ;


 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get (int ,int *,int const*) ;
 int oid ;

int git_oidmap_exists(git_oidmap *map, const git_oid *key)
{
 return kh_get(oid, map, key) != kh_end(map);
}
