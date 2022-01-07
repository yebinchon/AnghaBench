
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int map; } ;
typedef TYPE_1__ git_treebuilder ;
typedef int git_tree_entry ;


 int assert (TYPE_1__*) ;
 int git_strmap_clear (int ) ;
 int git_strmap_foreach_value (int ,int *,int ) ;
 int git_tree_entry_free (int *) ;

void git_treebuilder_clear(git_treebuilder *bld)
{
 git_tree_entry *e;

 assert(bld);

 git_strmap_foreach_value(bld->map, e, git_tree_entry_free(e));
 git_strmap_clear(bld->map);
}
