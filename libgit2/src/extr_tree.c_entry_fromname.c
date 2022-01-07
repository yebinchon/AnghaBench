
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree_entry ;
struct TYPE_4__ {int entries; } ;
typedef TYPE_1__ git_tree ;


 int const* git_array_get (int ,size_t) ;
 scalar_t__ tree_key_search (size_t*,TYPE_1__ const*,char const*,size_t) ;

__attribute__((used)) static const git_tree_entry *entry_fromname(
 const git_tree *tree, const char *name, size_t name_len)
{
 size_t idx;

 if (tree_key_search(&idx, tree, name, name_len) < 0)
  return ((void*)0);

 return git_array_get(tree->entries, idx);
}
