
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int length; scalar_t__ contents; } ;
typedef TYPE_2__ git_vector ;
struct TYPE_10__ {char** strings; int count; } ;
struct TYPE_12__ {void* flags; TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;


 void* GIT_ITERATOR_DONT_IGNORE_CASE ;
 void* GIT_ITERATOR_IGNORE_CASE ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int expect_iterator_items (int *,size_t,char const**,size_t,char const**) ;
 int g_repo ;
 int git_iterator_advance (int *,int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 int git_vector_clear (TYPE_2__*) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;

void test_iterator_workdir__pathlist_with_dirs(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_vector filelist;

 cl_git_pass(git_vector_init(&filelist, 5, ((void*)0)));

 g_repo = cl_git_sandbox_init("icase");


 {
  const char *expected[] = { "k/1", "k/B", "k/D", "k/a", "k/c" };
  size_t expected_len = 5;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "k"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  git_iterator_free(i);
 }


 {
  const char *expected[] = { "k/1", "k/B", "k/D", "k/a", "k/c" };
  size_t expected_len = 5;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "k/"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  git_iterator_free(i);
 }




 {
  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "K/"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  cl_git_fail_with(GIT_ITEROVER, git_iterator_advance(((void*)0), i));
  git_iterator_free(i);
 }


 {
  const char *expected[] = { "k/1", "k/a", "k/B", "k/c", "k/D" };
  size_t expected_len = 5;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "K/"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  git_iterator_free(i);
 }


 {
  const char *expected[] = { "k/1", "k/a", "k/B", "k/c", "k/D" };
  size_t expected_len = 5;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "K"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  git_iterator_free(i);
 }

 git_vector_free(&filelist);
}
