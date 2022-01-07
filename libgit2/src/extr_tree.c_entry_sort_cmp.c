
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filename_len; int filename; } ;
typedef TYPE_1__ git_tree_entry ;


 int git__strncmp ;
 int git_path_cmp (int ,int ,int ,int ,int ,int ,int ) ;
 int git_tree_entry__is_tree (TYPE_1__ const*) ;

__attribute__((used)) static int entry_sort_cmp(const void *a, const void *b)
{
 const git_tree_entry *e1 = (const git_tree_entry *)a;
 const git_tree_entry *e2 = (const git_tree_entry *)b;

 return git_path_cmp(
  e1->filename, e1->filename_len, git_tree_entry__is_tree(e1),
  e2->filename, e2->filename_len, git_tree_entry__is_tree(e2),
  git__strncmp);
}
