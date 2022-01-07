
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_idxmap_icase ;


 int idxicase ;
 int kh_clear (int ,int *) ;

void git_idxmap_icase_clear(git_idxmap_icase *map)
{
 kh_clear(idxicase, map);
}
