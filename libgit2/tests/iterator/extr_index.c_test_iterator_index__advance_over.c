
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITERATOR_STATUS_NORMAL ;
 int GIT_ITEROVER ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int create_paths (int *,int *,int) ;
 int expect_advance_over (int *,char*,int ) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_iterator_advance (int *,int *) ;
 int git_iterator_for_index (int **,int ,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_repository_index (int **,int ) ;

void test_iterator_index__advance_over(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 git_index *index;

 i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
  GIT_ITERATOR_DONT_AUTOEXPAND;

 g_repo = cl_git_sandbox_init("icase");
 cl_git_pass(git_repository_index(&index, g_repo));

 create_paths(index, ((void*)0), 1);

 cl_git_pass(git_iterator_for_index(&i, g_repo, index, &i_opts));

 expect_advance_over(i, "B", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "D", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "F", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "H", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "J", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "L/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "a", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "c", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "e", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "g", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "i", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "item0", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "item1/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "item2", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "item3/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "item4", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "item5/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "item6", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "item7/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "k/", GIT_ITERATOR_STATUS_NORMAL);

 cl_git_fail_with(GIT_ITEROVER, git_iterator_advance(((void*)0), i));
 git_iterator_free(i);
 git_index_free(index);
}
