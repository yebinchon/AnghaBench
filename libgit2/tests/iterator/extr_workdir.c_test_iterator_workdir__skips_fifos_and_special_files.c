
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_7__ {int mode; } ;
typedef TYPE_2__ git_index_entry ;


 int F_OK ;
 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 int GIT_ITERATOR_INCLUDE_TREES ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int access (char*,int ) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int cl_skip () ;
 int g_repo ;
 int git_iterator_advance (TYPE_2__ const**,int *) ;
 int git_iterator_for_filesystem (int **,char*,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int mkfifo (char*,int) ;
 int p_mkdir (char*,int) ;

void test_iterator_workdir__skips_fifos_and_special_files(void)
{

 git_iterator *i;
 const git_index_entry *e;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_must_pass(p_mkdir("empty_standard_repo/dir", 0777));
 cl_git_mkfile("empty_standard_repo/file", "not me");

 cl_assert(!mkfifo("empty_standard_repo/fifo", 0777));
 cl_assert(!access("empty_standard_repo/fifo", F_OK));

 i_opts.flags = GIT_ITERATOR_INCLUDE_TREES |
  GIT_ITERATOR_DONT_AUTOEXPAND;

 cl_git_pass(git_iterator_for_filesystem(
  &i, "empty_standard_repo", &i_opts));

 cl_git_pass(git_iterator_advance(&e, i));
 cl_assert(S_ISDIR(e->mode));
 cl_git_pass(git_iterator_advance(&e, i));
 cl_assert(S_ISDIR(e->mode));

 cl_git_pass(git_iterator_advance(&e, i));
 cl_assert(S_ISREG(e->mode));

 cl_assert_equal_i(GIT_ITEROVER, git_iterator_advance(&e, i));

 git_iterator_free(i);



}
