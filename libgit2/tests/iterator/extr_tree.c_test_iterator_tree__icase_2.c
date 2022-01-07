
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_INCLUDE_TREES ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,int,char const**,int,char const**) ;
 int g_repo ;
 int git_iterator_for_tree (int **,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;

void test_iterator_tree__icase_2(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_tree *head;
 static const char *expect_basic[] = {
  "current_file",
  "file_deleted",
  "modified_file",
  "staged_changes",
  "staged_changes_file_deleted",
  "staged_changes_modified_file",
  "staged_delete_file_deleted",
  "staged_delete_modified_file",
  "subdir.txt",
  "subdir/current_file",
  "subdir/deleted_file",
  "subdir/modified_file",
  ((void*)0),
 };
 static const char *expect_trees[] = {
  "current_file",
  "file_deleted",
  "modified_file",
  "staged_changes",
  "staged_changes_file_deleted",
  "staged_changes_modified_file",
  "staged_delete_file_deleted",
  "staged_delete_modified_file",
  "subdir.txt",
  "subdir/",
  "subdir/current_file",
  "subdir/deleted_file",
  "subdir/modified_file",
  ((void*)0),
 };
 static const char *expect_noauto[] = {
  "current_file",
  "file_deleted",
  "modified_file",
  "staged_changes",
  "staged_changes_file_deleted",
  "staged_changes_modified_file",
  "staged_delete_file_deleted",
  "staged_delete_modified_file",
  "subdir.txt",
  "subdir/",
  ((void*)0)
 };

 g_repo = cl_git_sandbox_init("status");

 cl_git_pass(git_repository_head_tree(&head, g_repo));


 cl_git_pass(git_iterator_for_tree(&i, head, ((void*)0)));
 expect_iterator_items(i, 12, expect_basic, 12, expect_basic);
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_INCLUDE_TREES;

 cl_git_pass(git_iterator_for_tree(&i, head, &i_opts));
 expect_iterator_items(i, 13, expect_trees, 13, expect_trees);
 git_iterator_free(i);


 i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;

 cl_git_pass(git_iterator_for_tree(&i, head, &i_opts));
 expect_iterator_items(i, 10, expect_noauto, 13, expect_trees);
 git_iterator_free(i);

 git_tree_free(head);
}
