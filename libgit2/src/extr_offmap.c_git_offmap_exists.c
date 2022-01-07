
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_offmap ;
typedef int git_off_t ;


 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get (int ,int *,int const) ;
 int off ;

int git_offmap_exists(git_offmap *map, const git_off_t key)
{
 return kh_get(off, map, key) != kh_end(map);
}
