
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;


 int git__free (int *) ;

void git_tree_entry_free(git_tree_entry *entry)
{
 if (entry == ((void*)0))
  return;

 git__free(entry);
}
