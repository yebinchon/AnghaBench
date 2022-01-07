
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_idxmap_icase ;


 int idxicase ;
 int kh_destroy (int ,int *) ;

void git_idxmap_icase_free(git_idxmap_icase *map)
{
 kh_destroy(idxicase, map);
}
