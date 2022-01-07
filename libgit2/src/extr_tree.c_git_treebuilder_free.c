
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int map; } ;
typedef TYPE_1__ git_treebuilder ;


 int git__free (TYPE_1__*) ;
 int git_strmap_free (int ) ;
 int git_treebuilder_clear (TYPE_1__*) ;

void git_treebuilder_free(git_treebuilder *bld)
{
 if (bld == ((void*)0))
  return;

 git_treebuilder_clear(bld);
 git_strmap_free(bld->map);
 git__free(bld);
}
