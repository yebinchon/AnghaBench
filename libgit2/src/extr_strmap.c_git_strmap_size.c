
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strmap ;


 size_t kh_size (int *) ;

size_t git_strmap_size(git_strmap *map)
{
 return kh_size(map);
}
