
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;


 int git__prefixcmp (int ,void*) ;
 int git_tree_entry_name (int const*) ;

__attribute__((used)) static int treebuilder_filter_prefixed(
 const git_tree_entry *entry, void *payload)
{
 return !git__prefixcmp(git_tree_entry_name(entry), payload);
}
