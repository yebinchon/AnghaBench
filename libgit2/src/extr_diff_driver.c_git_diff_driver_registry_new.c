
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int drivers; } ;
typedef TYPE_1__ git_diff_driver_registry ;


 TYPE_1__* git__calloc (int,int) ;
 int git_diff_driver_registry_free (TYPE_1__*) ;
 scalar_t__ git_strmap_new (int *) ;

git_diff_driver_registry *git_diff_driver_registry_new(void)
{
 git_diff_driver_registry *reg =
  git__calloc(1, sizeof(git_diff_driver_registry));
 if (!reg)
  return ((void*)0);

 if (git_strmap_new(&reg->drivers) < 0) {
  git_diff_driver_registry_free(reg);
  return ((void*)0);
 }

 return reg;
}
