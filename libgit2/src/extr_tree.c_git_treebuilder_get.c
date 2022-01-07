
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_treebuilder ;
typedef int git_tree_entry ;


 int const* treebuilder_get (int *,char const*) ;

const git_tree_entry *git_treebuilder_get(git_treebuilder *bld, const char *filename)
{
 return treebuilder_get(bld, filename);
}
