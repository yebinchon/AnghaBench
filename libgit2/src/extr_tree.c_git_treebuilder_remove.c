
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int map; } ;
typedef TYPE_1__ git_treebuilder ;
typedef int git_tree_entry ;


 int git_strmap_delete (int ,char const*) ;
 int git_tree_entry_free (int *) ;
 int tree_error (char*,char const*) ;
 int * treebuilder_get (TYPE_1__*,char const*) ;

int git_treebuilder_remove(git_treebuilder *bld, const char *filename)
{
 git_tree_entry *entry = treebuilder_get(bld, filename);

 if (entry == ((void*)0))
  return tree_error("failed to remove entry: file isn't in the tree", filename);

 git_strmap_delete(bld->map, filename);
 git_tree_entry_free(entry);

 return 0;
}
