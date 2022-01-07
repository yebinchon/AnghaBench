
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oidmap ;
typedef int git_oid ;


 void* git_oidmap_get (int *,int const*) ;

__attribute__((used)) static void *oidmap_value_bykey(git_oidmap *map, const git_oid *key)
{
 return git_oidmap_get(map, key);
}
