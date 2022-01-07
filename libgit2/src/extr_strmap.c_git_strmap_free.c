
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strmap ;


 int kh_destroy (int ,int *) ;
 int str ;

void git_strmap_free(git_strmap *map)
{
 kh_destroy(str, map);
}
