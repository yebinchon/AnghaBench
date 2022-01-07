
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ length; scalar_t__ contents; } ;
typedef TYPE_2__ git_vector ;
typedef int git_tree ;
struct TYPE_10__ {char** strings; scalar_t__ count; } ;
struct TYPE_12__ {char* start; char* end; void* flags; TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 void* GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int expect_iterator_items (int *,size_t,char const**,size_t,char const**) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;
 int git_vector_clear (TYPE_2__*) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;
 int setup_fixture_submod2 () ;

void test_iterator_workdir__bounded_submodules(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_vector filelist;
 git_index *index;
 git_tree *head;

 cl_git_pass(git_vector_init(&filelist, 5, ((void*)0)));

 g_repo = setup_fixture_submod2();
 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_repository_head_tree(&head, g_repo));


 {
  const char *expected[] = { "sm_changed_head" };
  size_t expected_len = 1;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "sm_changed_head"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, index, head, &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  git_iterator_free(i);
 }


 {
  const char *expected[] = { "sm_changed_head" };
  size_t expected_len = 1;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "sm_changed_head/"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, index, head, &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  git_iterator_free(i);
 }


 {
  const char *expected[] = { "sm_changed_head", "sm_changed_index" };
  size_t expected_len = 2;

  i_opts.start = "sm_changed_head";
  i_opts.end = "sm_changed_index";
  i_opts.pathlist.strings = ((void*)0);
  i_opts.pathlist.count = 0;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, index, head, &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  git_iterator_free(i);
 }


 {
  const char *expected[] = { "sm_changed_head", "sm_changed_index" };
  size_t expected_len = 2;

  i_opts.start = "sm_changed_head";
  i_opts.end = "sm_changed_index";
  i_opts.pathlist.strings = ((void*)0);
  i_opts.pathlist.count = 0;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, index, head, &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  git_iterator_free(i);
 }

 git_vector_free(&filelist);
 git_index_free(index);
 git_tree_free(head);
}
