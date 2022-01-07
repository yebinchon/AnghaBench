
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree_entry ;
struct TYPE_4__ {int entries; } ;
typedef TYPE_1__ git_tree ;


 int assert (TYPE_1__ const*) ;
 int const* git_array_get (int ,size_t) ;

const git_tree_entry *git_tree_entry_byindex(
 const git_tree *tree, size_t idx)
{
 assert(tree);
 return git_array_get(tree->entries, idx);
}
