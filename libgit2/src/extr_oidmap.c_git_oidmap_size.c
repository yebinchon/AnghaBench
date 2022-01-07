
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oidmap ;


 size_t kh_size (int *) ;

size_t git_oidmap_size(git_oidmap *map)
{
 return kh_size(map);
}
