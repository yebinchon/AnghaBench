
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_index ;
typedef int git_checkout_options ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CHECKOUT_OPTIONS_INIT ;
 int add_conflict (int *,char*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_checkout_index (int ,int *,int *) ;
 int git_futils_readbuffer (TYPE_1__*,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 scalar_t__ strcmp (int ,char*) ;

void test_checkout_index__writes_conflict_file(void)
{
 git_index *index;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_buf conflicting_buf = GIT_BUF_INIT;

 cl_git_pass(git_repository_index(&index, g_repo));

 add_conflict(index, "conflicting.txt");
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 cl_git_pass(git_futils_readbuffer(&conflicting_buf, "testrepo/conflicting.txt"));
 cl_assert(strcmp(conflicting_buf.ptr,
  "<<<<<<< ours\n"
  "this file is changed in master and branch\n"
  "=======\n"
  "this file is changed in branch and master\n"
  ">>>>>>> theirs\n") == 0);
 git_buf_dispose(&conflicting_buf);

 git_index_free(index);
}
