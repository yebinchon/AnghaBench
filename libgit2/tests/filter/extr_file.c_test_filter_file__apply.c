
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_filter_list ;
typedef int git_filter ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_FILTER_CRLF ;
 int GIT_FILTER_TO_ODB ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_filter_list_apply_to_file (TYPE_1__*,int *,int ,char*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_new (int **,int ,int ,int ) ;
 int git_filter_list_push (int *,int *,int *) ;
 int * git_filter_lookup (int ) ;

void test_filter_file__apply(void)
{
 git_filter_list *fl;
 git_filter *crlf;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_filter_list_new(
  &fl, g_repo, GIT_FILTER_TO_ODB, 0));

 crlf = git_filter_lookup(GIT_FILTER_CRLF);
 cl_assert(crlf != ((void*)0));

 cl_git_pass(git_filter_list_push(fl, crlf, ((void*)0)));

 cl_git_pass(git_filter_list_apply_to_file(&buf, fl, g_repo, "all-crlf"));
 cl_assert_equal_s("crlf\ncrlf\ncrlf\ncrlf\n", buf.ptr);

 git_buf_dispose(&buf);
 git_filter_list_free(fl);
}
