
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_offmap ;


 int kh_destroy (int ,int *) ;
 int off ;

void git_offmap_free(git_offmap *map)
{
 kh_destroy(off, map);
}
