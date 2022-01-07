
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_filter_list ;
typedef int git_filter ;
struct TYPE_5__ {char* ptr; int size; int member_0; } ;
typedef TYPE_1__ git_buf ;


 int GIT_FILTER_CRLF ;
 int GIT_FILTER_TO_ODB ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_filter_list_apply_to_data (TYPE_1__*,int *,TYPE_1__*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_new (int **,int ,int ,int ) ;
 int git_filter_list_push (int *,int *,int *) ;
 int * git_filter_lookup (int ) ;
 int strlen (char*) ;

void test_filter_crlf__to_odb(void)
{
 git_filter_list *fl;
 git_filter *crlf;
 git_buf in = { 0 }, out = { 0 };

 cl_git_pass(git_filter_list_new(
  &fl, g_repo, GIT_FILTER_TO_ODB, 0));

 crlf = git_filter_lookup(GIT_FILTER_CRLF);
 cl_assert(crlf != ((void*)0));

 cl_git_pass(git_filter_list_push(fl, crlf, ((void*)0)));

 in.ptr = "Some text\r\nRight here\r\n";
 in.size = strlen(in.ptr);

 cl_git_pass(git_filter_list_apply_to_data(&out, fl, &in));

 cl_assert_equal_s("Some text\nRight here\n", out.ptr);

 git_filter_list_free(fl);
 git_buf_dispose(&out);
}
