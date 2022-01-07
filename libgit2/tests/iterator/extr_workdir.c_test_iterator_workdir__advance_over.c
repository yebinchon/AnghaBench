
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITERATOR_STATUS_EMPTY ;
 int GIT_ITERATOR_STATUS_IGNORED ;
 int GIT_ITERATOR_STATUS_NORMAL ;
 int GIT_ITEROVER ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int expect_advance_over (int *,char*,int ) ;
 int g_repo ;
 int git_iterator_advance (int *,int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int p_mkdir (char*,int) ;
 int p_rmdir (char*) ;

void test_iterator_workdir__advance_over(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

 i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
  GIT_ITERATOR_DONT_AUTOEXPAND;

 g_repo = cl_git_sandbox_init("icase");


 cl_must_pass(p_mkdir("icase/empty", 0777));


 cl_must_pass(p_mkdir("icase/all_ignored", 0777));
 cl_git_rewritefile("icase/all_ignored/one", "This is ignored\n");
 cl_git_rewritefile("icase/all_ignored/two", "This, too, is ignored\n");
 cl_git_rewritefile("icase/all_ignored/.gitignore", ".gitignore\none\ntwo\n");


 cl_must_pass(p_mkdir("icase/some_ignored", 0777));
 cl_git_rewritefile("icase/some_ignored/one", "This is ignored\n");
 cl_git_rewritefile("icase/some_ignored/two", "This is not ignored\n");
 cl_git_rewritefile("icase/some_ignored/.gitignore", ".gitignore\none\n");


 cl_must_pass(p_mkdir("icase/empty_children", 0777));
 cl_must_pass(p_mkdir("icase/empty_children/empty1", 0777));
 cl_must_pass(p_mkdir("icase/empty_children/empty2", 0777));
 cl_must_pass(p_mkdir("icase/empty_children/empty3", 0777));


 cl_must_pass(p_mkdir("icase/missing_directory", 0777));

 cl_git_pass(git_iterator_for_workdir(&i, g_repo, ((void*)0), ((void*)0), &i_opts));

 cl_must_pass(p_rmdir("icase/missing_directory"));

 expect_advance_over(i, "B", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "D", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "F", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "H", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "J", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "L/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "a", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "all_ignored/", GIT_ITERATOR_STATUS_IGNORED);
 expect_advance_over(i, "c", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "e", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "empty/", GIT_ITERATOR_STATUS_EMPTY);
 expect_advance_over(i, "empty_children/", GIT_ITERATOR_STATUS_EMPTY);
 expect_advance_over(i, "g", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "i", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "k/", GIT_ITERATOR_STATUS_NORMAL);
 expect_advance_over(i, "missing_directory/", GIT_ITERATOR_STATUS_EMPTY);
 expect_advance_over(i, "some_ignored/", GIT_ITERATOR_STATUS_NORMAL);

 cl_git_fail_with(GIT_ITEROVER, git_iterator_advance(((void*)0), i));
 git_iterator_free(i);
}
