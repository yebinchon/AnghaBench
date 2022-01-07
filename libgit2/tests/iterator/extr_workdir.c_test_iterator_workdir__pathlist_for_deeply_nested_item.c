
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int length; scalar_t__ contents; } ;
typedef TYPE_2__ git_vector ;
struct TYPE_14__ {char** strings; int count; } ;
struct TYPE_16__ {void* flags; TYPE_1__ pathlist; } ;
typedef TYPE_3__ git_iterator_options ;
struct TYPE_17__ {int stat_calls; } ;
typedef TYPE_4__ git_iterator ;


 void* GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int create_paths (int ,int) ;
 int expect_iterator_items (TYPE_4__*,size_t,char const**,size_t,char const**) ;
 int g_repo ;
 int git_iterator_for_workdir (TYPE_4__**,int ,int *,int *,TYPE_3__*) ;
 int git_iterator_free (TYPE_4__*) ;
 int git_repository_workdir (int ) ;
 int git_vector_clear (TYPE_2__*) ;
 int git_vector_free (TYPE_2__*) ;
 int git_vector_init (TYPE_2__*,int,int *) ;
 int git_vector_insert (TYPE_2__*,char*) ;

void test_iterator_workdir__pathlist_for_deeply_nested_item(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_vector filelist;

 cl_git_pass(git_vector_init(&filelist, 5, ((void*)0)));

 g_repo = cl_git_sandbox_init("icase");
 create_paths(git_repository_workdir(g_repo), 3);




 {
  const char *expected[] = { "item1/item3/item5/item7" };
  size_t expected_len = 1;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "item1/item3/item5/item7"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  cl_assert_equal_i(4, i->stat_calls);
  git_iterator_free(i);
 }




 {
  const char *expected[] = {
   "item1/item3/item5/item0", "item1/item3/item5/item1",
   "item1/item3/item5/item2", "item1/item3/item5/item3",
   "item1/item3/item5/item4", "item1/item3/item5/item5",
   "item1/item3/item5/item6", "item1/item3/item5/item7",
  };
  size_t expected_len = 8;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "item1/item3/item5/"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  cl_assert_equal_i(11, i->stat_calls);
  git_iterator_free(i);
 }




 {
  const char *expected[] = {
   "item1/item3/item0",
   "item1/item3/item1/item0", "item1/item3/item1/item1",
   "item1/item3/item1/item2", "item1/item3/item1/item3",
   "item1/item3/item1/item4", "item1/item3/item1/item5",
   "item1/item3/item1/item6", "item1/item3/item1/item7",
   "item1/item3/item2",
   "item1/item3/item3/item0", "item1/item3/item3/item1",
   "item1/item3/item3/item2", "item1/item3/item3/item3",
   "item1/item3/item3/item4", "item1/item3/item3/item5",
   "item1/item3/item3/item6", "item1/item3/item3/item7",
   "item1/item3/item4",
   "item1/item3/item5/item0", "item1/item3/item5/item1",
   "item1/item3/item5/item2", "item1/item3/item5/item3",
   "item1/item3/item5/item4", "item1/item3/item5/item5",
   "item1/item3/item5/item6", "item1/item3/item5/item7",
   "item1/item3/item6",
   "item1/item3/item7/item0", "item1/item3/item7/item1",
   "item1/item3/item7/item2", "item1/item3/item7/item3",
   "item1/item3/item7/item4", "item1/item3/item7/item5",
   "item1/item3/item7/item6", "item1/item3/item7/item7",
  };
  size_t expected_len = 36;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "item1/item3/"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  cl_assert_equal_i(42, i->stat_calls);
  git_iterator_free(i);
 }




 {
  const char *expected[] = {
   "item0", "item1/item2", "item5/item7/item4", "item6",
   "item7/item3/item1/item6" };
  size_t expected_len = 5;

  git_vector_clear(&filelist);
  cl_git_pass(git_vector_insert(&filelist, "item7/item3/item1/item6"));
  cl_git_pass(git_vector_insert(&filelist, "item6"));
  cl_git_pass(git_vector_insert(&filelist, "item5/item7/item4"));
  cl_git_pass(git_vector_insert(&filelist, "item1/item2"));
  cl_git_pass(git_vector_insert(&filelist, "item0"));


  cl_git_pass(git_vector_insert(&filelist, "item2/"));
  cl_git_pass(git_vector_insert(&filelist, "itemN"));
  cl_git_pass(git_vector_insert(&filelist, "item1/itemA"));
  cl_git_pass(git_vector_insert(&filelist, "item5/item3/item4/"));

  i_opts.pathlist.strings = (char **)filelist.contents;
  i_opts.pathlist.count = filelist.length;
  i_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

  cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));
  expect_iterator_items(i, expected_len, expected, expected_len, expected);
  cl_assert_equal_i(14, i->stat_calls);
  git_iterator_free(i);
 }

 git_vector_free(&filelist);
}
