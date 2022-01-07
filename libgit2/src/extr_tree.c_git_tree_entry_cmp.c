
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;


 int entry_sort_cmp (int const*,int const*) ;

int git_tree_entry_cmp(const git_tree_entry *e1, const git_tree_entry *e2)
{
 return entry_sort_cmp(e1, e2);
}
