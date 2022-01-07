
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int drivers; } ;
typedef TYPE_1__ git_diff_driver_registry ;
typedef int git_diff_driver ;


 int git__free (TYPE_1__*) ;
 int git_diff_driver_free (int *) ;
 int git_strmap_foreach_value (int ,int *,int ) ;
 int git_strmap_free (int ) ;

void git_diff_driver_registry_free(git_diff_driver_registry *reg)
{
 git_diff_driver *drv;

 if (!reg)
  return;

 git_strmap_foreach_value(reg->drivers, drv, git_diff_driver_free(drv));
 git_strmap_free(reg->drivers);
 git__free(reg);
}
